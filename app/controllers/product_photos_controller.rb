class ProductPhotosController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @photo = @product.productPhotos.create(cost_params)
    redirect_to product_path(@product)
  end

  private
  def cost_params
    params.permit(:url, :title)
  end

end
