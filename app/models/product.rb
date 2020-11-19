# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :sales
  validates_presence_of :description
  validates_presence_of :price
  validates_numericality_of :price
end
