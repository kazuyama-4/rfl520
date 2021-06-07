require 'rails_helper'
RSpec.describe Management, type: :model do
  before do
    user = FactoryBot.create(:user)
    @management = FactoryBot.build(:management, user_id: user.id)
    sleep 0.1
  end

  describe '買い物リストに追加' do
    context '買い物リストに追加ができるとき' do
      it 'すべてのカラムを入力すると登録できる' do
        expect(@management).to be_valid
      end
    end
    context '買い物リストに追加ができないとき' do
      it 'itemが空では登録できない' do
        @management.item = ''
        @management.valid?
        expect(@management.errors.full_messages).to include("Item can't be blank")
      end
      it '1が選択されている場合は出品できない' do
        @management.category_id = 1
        @management.valid?
        expect(@management.errors.full_messages).to include('Category Select')
      end
      it 'deadlineが空では登録できない' do
        @management.deadline = ''
        @management.valid?
        expect(@management.errors.full_messages).to include("Deadline can't be blank")
      end
    end
  end
end
