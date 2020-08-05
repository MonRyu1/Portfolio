class Admin::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def show
  end

  def edit
  end

  def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_to admin_shops_path
  end

  def update
  end

  def destroy
  end

  private
  def shop_params
    params.require(:shop).permit(:area_id, :name, :address, :phone_number, :email, :shop_image, :about)
  end
end
