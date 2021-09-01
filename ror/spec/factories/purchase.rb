FactoryBot.define do
  factory :purchase do
    count { Faker::Number.number(digits: 3) }
    item
    purchaser
    merchant
  end
end
