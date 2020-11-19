# frozen_string_literal: true

class Service::Sale
  def initialize(data)
    @data = data
  end

  def save!
    unless @data.empty?
      Sale.transaction do
        @sale = Sale.new(amount: 0)
        @data.each do |row|
          @sale.sale_items << Service::SaleItem.new(row).build_item
        end
        @sale.amount = calculate_amount( @sale.sale_items)
        @sale.save!
      end
    end
  end

  private

  def calculate_amount(sale_items)
    sale_items.inject(0) { |sum, e| sum + (e.quantity * e.product.price) }
  end
end
