require 'csv'

class PurchasesController < ApplicationController
  
  def index
    @purchases = Purchase.all
  end

  def upload
    @uploaded_file = params[:file]
    
    CSV.foreach(@uploaded_file, headers: true, col_sep: "\t") do |row|
      purchase = row.to_h

      Purchaser.create(
        name: purchase['purchaser name'],
      )

      Merchant.create(
        name: purchase['merchant name'],
        address: purchase['merchant address']
      )

      Item.create(
        description: purchase['item description'],
        price: purchase['item price']
      )

      Purchase.create(
        count: purchase['purchase count'],
        purchaser_id: Purchaser.last.id,
        item_id: Item.last.id,
        merchant_id: Merchant.last.id
      )
    end
  end
end
