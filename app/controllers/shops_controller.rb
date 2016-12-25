class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    end
  def new
    @shop = Shop.new
  end


  private def shop_params
    params.require(:shop).permit(:chain, :name, :latitude, :longitude,
    :address, :city, :zip, :phone, :country_code)
  end

  def destroy
    
      @shop = Shop.find(params[:id])
      @shop.destroy
      redirect_to '/shops', :notice => "The shop has been deleted"
  end

  def show
    @shop = Shop.find(params[:id])
end


  public def create
      @shop = Shop.new(shop_params)
      if @shop.save
        redirect_to '/shops'
      end
    end
  end
