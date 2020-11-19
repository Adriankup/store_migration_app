# frozen_string_literal: true
require 'ffaker'

FactoryBot.define do
  factory :product do
    description { FFaker::Product.product_name }
    price { 150.60 }
  end
end
