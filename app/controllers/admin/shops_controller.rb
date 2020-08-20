class Admin::ShopsController < ApplicationController
   before_action :authenticate_admin!

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def show
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to admin_shops_path
  end

  def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    redirect_to admin_shops_path
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    redirect_to admin_shops_path
  end

  private
  def shop_params
    params.require(:shop).permit(:area_id, :name, :address, :phone_number, :email, :shop_image, :about)
  end
end
