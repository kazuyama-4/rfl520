class ShopsController < ApplicationController
  def index
    @shop = Shop.new
    @shops = Shop.includes(:user)
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path(@shop)
    else
      @shops = Shop.includes(:user)
      render :index
    end
  end

  def destroy
    @shops = Shop.includes(:user)
    redirect_to shops_path if @shops.where(user_id: id = current_user.id).delete_all
  end

  private

  def shop_params
    params.require(:shop).permit(:stuff).merge(user_id: current_user.id)
  end
end
