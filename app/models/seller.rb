# frozen_string_literal: true

class Seller < ApplicationRecord
  has_many :sale_items

  validates_presence_of :name
end
