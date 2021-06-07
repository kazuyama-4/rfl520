FactoryBot.define do
  factory :management do
    item { Faker::Name.initials(number: 2) }
    category_id { 2 }
    deadline { '2021-06-06' }
    association :user
  end
end
