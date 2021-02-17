require 'rails_helper'

RSpec.describe Meeting, type: :model do
  describe "イベント新規登録" do
    before do
      @meeting = FactoryBot.build(:meeting)
    end

    context "イベント新規登録できるとき" do
      it 'タイトルと詳細とstart_timeが存在すれば登録できること' do
        expect(@meeting).to  be_valid
      end
    end

    context "イベント新規登録できないとき" do
      it 'タイトルが空では登録できないこと' do
        @meeting.title = nil
        @meeting.valid?
        expect(@meeting.errors.full_messages).to include('タイトルを入力してください')
      end

      it 'start_timeが空では登録できないこと' do
        @meeting.start_time = nil
        @meeting.valid?
        expect(@meeting.errors.full_messages).to include('Start timeを入力してください')
      end

      it '詳細が空では登録できないこと' do
        @meeting.content = nil
        @meeting.valid?
        expect(@meeting.errors.full_messages).to include('詳細を入力してください')
      end

      it 'groupが紐付いていないと登録できないこと' do
        @meeting.group = nil
        @meeting.valid?
        expect(@meeting.errors.full_messages).to include('Groupを入力してください')
      end
    end
  end
end
