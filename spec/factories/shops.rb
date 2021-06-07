FactoryBot.define do
  factory :shop do
    stuff { Faker::Name.initials(number: 2) }
    association :user
  end
end
