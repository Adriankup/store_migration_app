# frozen_string_literal: true
require 'ffaker'

FactoryBot.define do
  factory :sale_item do
    buyer { FFaker::Name.first_name }
    sale
    quantity { 2 }
    product
    seller
  end
end
