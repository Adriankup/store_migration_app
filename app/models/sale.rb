# frozen_string_literal: true

class Sale < ApplicationRecord
  attr_accessor :file
  has_many :sale_items
end
