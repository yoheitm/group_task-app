require 'rails_helper'

RSpec.describe Message, type: :model do
  describe "メッセージ新規投稿" do
    before do
      @message = FactoryBot.build(:message)
    end

    context "メッセージ新規投稿できるとき" do
      it 'contentが存在していれば投稿できること' do
        expect(@message).to be_valid
      end
    end
    
    context "メッセージ新規投稿できないとき" do
      it 'contentが空では投稿できないこと' do
        @message.content = nil
        @message.valid?
        expect(@message.errors.full_messages).to include('Contentを入力してください')
      end
      
      it 'groupが紐付いていないと投稿できないこと' do
        @message.group = nil
        @message.valid?
        expect(@message.errors.full_messages).to include('Groupを入力してください')
      end

      it 'userが紐付いていないと投稿できないこと' do
        @message.user = nil
        @message.valid?
        expect(@message.errors.full_messages).to include('Userを入力してください')
      end
    end
    
  end
  
end
