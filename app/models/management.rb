class Management < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :item
    validates :deadline
  end
  with_options numericality: { other_than: 1, message: 'Select' } do
    validates :category_id
  end
end
