class Purchase < ApplicationRecord
  belongs_to :purchaser
  has_many :item
  belongs_to :merchant
end
