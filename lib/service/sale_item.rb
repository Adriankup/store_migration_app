# frozen_string_literal: true

class Service::SaleItem
  attr_accessor :buyer, :item_description, :item_price, :quantity, :seller_address, :seller
  def initialize(row)
    @buyer = row['comprador']
    @item_description = row['descripcion del item']
    @item_price = row['precio del item']
    @quantity = row['total de items']
    @seller_address = row['direccion de vendedor']
    @seller = row['vendedor']
  end

  def build_item
    product = Product.find_or_initialize_by(description: @item_description, price: @item_price)
    seller = Seller.find_or_initialize_by(name: @seller, address: @seller_address)

    SaleItem.new(buyer: @buyer, quantity: @quantity.to_i, product: product, seller: seller)
  end
end
