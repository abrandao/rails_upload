require 'rails_helper'

RSpec.describe Purchaser, type: :model do
  
  it { expect { create(:purchaser) }.to change{ Purchaser.all.size }.by(1) }
  
end
