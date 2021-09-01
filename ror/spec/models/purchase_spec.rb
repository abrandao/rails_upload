require 'rails_helper'

RSpec.describe Purchase, type: :model do
  
  let(:purchase) do
    create(:purchase,
      items: 3.times.map { build(:item, price: Faker::Commerce.price) }
    )
  end
  
end
