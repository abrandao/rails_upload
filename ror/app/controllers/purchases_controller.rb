require 'csv'

class PurchasesController < ApplicationController
  
  def index
    @purchases = Purchase.all
  end

  def upload
    @uploaded_file = params[:file]
    
    CSV.foreach(@uploaded_file, headers: true, col_sep: "\t") do |row|
      purchase = row.to_h

      item = Item.find_or_create_by(description: purchase["item description"], price: purchase["item price"]);
      merchant = Merchant.find_or_create_by(name: purchase["merchant name"], address: purchase["merchant address"])
      purchaser = Purchaser.find_or_create_by(name: purchase["purchaser name"])
      purchase = Purchase.create(count: purchase["purchase count"], item_id: item.id, merchant_id: merchant.id, purchaser_id: purchaser.id)
    end
  end
end
