class Shop < ApplicationRecord
  with_options presence: true do
    validates :stuff
  end
  belongs_to :user
end
