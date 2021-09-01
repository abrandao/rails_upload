require 'rails_helper'

RSpec.describe Item, type: :model do
  
  it { expect { create(:item) }.to change{ Item.all.size }.by(1) }
  
end
