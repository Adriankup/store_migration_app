# frozen_string_literal: true

class Sale < ApplicationRecord
  belongs_to :product
  belongs_to :seller

  validates_presence_of :buyer
  validates_presence_of :product
  validates_presence_of :seller
  validates_presence_of :quantity
  validates :quantity, numericality: { only_integer: true }
end
