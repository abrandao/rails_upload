class Purchase < ApplicationRecord
  belongs_to :purchaser
  has_many :item
  belongs_to :merchant

  validates :count, presence: true
  validates :purchaser_id, presence: true
  validates :item_id, presence: true
  validates :merchant_id, presence: true
end
