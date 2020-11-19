class SalesController < ApplicationController

  before_action :set_sale, only: %i[show destroy]


  def index
    @sales = Sale.all
  end

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

  def show; end

  def destroy
    respond_to do |format|
      @sale.destroy
      format.html { redirect_to sales_path, notice: t('controller.destroyed') }
    rescue StandardError => e
      format.html { redirect_to sales_path, alert: e.message }
    end
  end

  private

  def sale_params
    params.require(:sale).permit(:file)
  end

  def importation_service
    @importation_service ||= Service::Importation.new
  end

  def set_sale
    @sale = Sale.find(params[:id])
  end
end
