# frozen_string_literal: true

class Seller < ApplicationRecord
  has_many :sales

  validates_presence_of :name
end
