# frozen_string_literal: true

class Service::Importation
  def execute(params)
    data = Formatter::Csv.new(params[:file]).to_format("\t")
    Service::Sale.new(data).save!
  end
end
