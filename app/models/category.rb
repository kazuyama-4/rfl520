class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '野菜・果物' },
    { id: 3, name: '魚・肉・卵など' },
    { id: 4, name: '冷凍' },
    { id: 5, name: '飲料水' },
    { id: 6, name: '調味料' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :managements
end
