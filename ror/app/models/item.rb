class Item < ApplicationRecord
  validates :description, presence: true
  validates :price, presence: true
end
