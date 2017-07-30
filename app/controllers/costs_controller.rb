class CostsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @cost = @product.costs.create(cost_params)
    redirect_to product_path(@product)
  end

  private
  def cost_params
    params.require(:cost).permit(:volume, :price, :sort)
  end
end
