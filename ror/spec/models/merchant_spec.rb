require 'rails_helper'

RSpec.describe Merchant, type: :model do
   
  it { expect { create(:merchant) }.to change{ Merchant.all.size }.by(1) }
  
end
