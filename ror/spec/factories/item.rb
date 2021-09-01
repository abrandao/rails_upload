FactoryBot.define do
  factory :item do
    description { Faker::Lorem.words(number: 2) }
    price { Faker::Commerce.price }
  end
end