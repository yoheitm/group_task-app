require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @user = FactoryBot.build(:user)
    end

    context "ユーザー登録ができる時" do
      it '名前とメールアドレス、パスワードとパスワード(確認用)が存在すれば登録できること' do
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録ができない時' do
      it '名前が空では登録できないこと' do
        @user.name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("名前を入力してください")
      end

      it 'メールアドレスが空では登録できないこと' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end

      it '重複したメールアドレスが存在する場合登録できないこと' do
        @user.save
        another_user = FactoryBot.build(:user, email: @user.email)
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
      end

      it 'メールアドレスは、@を含んでないと登録できないこと' do
        @user.email = 'abcdefg'
        @user.valid?
        expect(@user.errors.full_messages).to include('Eメールは不正な値です')
      end

      it 'パスワードは、5文字以下では登録できないこと' do
        @user.password = '123ab'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'パスワードは数字のみでは登録できないこと' do
        @user.password = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'パスワードは英語のみでは登録できないこと' do
        @user.password = 'abcdef'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'パスワードは全角では登録できないこと' do
        @user.password = 'ａｂｃ１２３'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは不正な値です')
      end

      it 'パスワード（確認用）が空では登録できないこと' do
        @user.password = '123abc'
        @user.password_confirmation = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）を入力してください")
      end

      it 'パスワードとパスワード（確認用）が不一致では登録できないこと' do
        @user.password = '123abc'
        @user.password_confirmation = '123abcd'
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
    end
    
  end
end
