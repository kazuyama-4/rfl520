require 'rails_helper'
RSpec.describe Shop, type: :model do
  before do
    user = FactoryBot.create(:user)
    @shop = FactoryBot.build(:shop, user_id: user.id)
  end

  describe '食材を加える' do
    context '食材を加えることができるとき' do
      it 'すべてのカラムを入力すると登録できる' do
        expect(@shop).to be_valid
      end
    end
    context '食材を加えることができないとき' do
      it 'stuffが空では登録できない' do
        @shop.stuff = ''
        @shop.valid?
        expect(@shop.errors.full_messages).to include("Stuff can't be blank")
      end
    end
  end
end
