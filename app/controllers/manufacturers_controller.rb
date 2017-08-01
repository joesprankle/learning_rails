class ManufacturersController < ApplicationController
  def index
    @mfg = Manufacturer.all
  end

  def show

  end


  def new
  end

  def create
    @manf = Manufacturer.new(manufacturer_params)

    @manf.save
    redirect_to @manf
  end


  private
  def manufacturer_params
    params.require(:manufacturer).permit(:name)
  end

end