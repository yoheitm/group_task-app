require 'rails_helper'

RSpec.describe Group, type: :model do
  describe "グループ新規作成" do
    before do
      user = FactoryBot.create(:user)
      @group = FactoryBot.build(:group, user_ids: user.id)
    end

    context "グループ新規作成ができるとき" do
      it 'グループ名とグループメンバーの値が存在すれば作成できること' do
        expect(@group).to be_valid
      end
    end
    
    context "グループ新規作成ができないとき" do
      it 'グループ名が空では作成できないこと' do
        @group.name = nil
        @group.valid?
        expect(@group.errors.full_messages).to include('グループ名を入力してください')
      end
    
      it 'グループメンがーが空では作成できないこと' do
        @group.user_ids = nil
        @group.valid?
        expect(@group.errors.full_messages).to include('グループメンバーを入力してください')
      end
    end
  end
end