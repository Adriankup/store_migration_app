# frozen_string_literal: true

require 'csv'

module Formatter
  class Csv
    def initialize(file)
      @file = file
    end

    def to_format(col_sep = ',')
      CSV.parse(File.read(@file), { headers: :first_row, col_sep: col_sep })
    end
  end
end
