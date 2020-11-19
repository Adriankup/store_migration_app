class SalesController < ApplicationController
  def index; end

  def new
    @sale = Sale.new
  end

  def create
    respond_to do |format|
      importation_service.execute(sale_params)
      format.html { redirect_to sales_path, notice: t('controller.created') }
    rescue StandardError => e
      format.html { redirect_to new_sale_path, alert: e.message }
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:file)
  end

  def importation_service
    @importation_service ||= Service::Importation.new
  end
end
