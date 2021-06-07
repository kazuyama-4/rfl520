class ShopsController < ApplicationController
  def index
    @shop = Shop.new
    @shops = Shop.order('created_at ASC')
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

  private

  def shop_params
    params.require(:shop).permit(:stuff).merge(user_id: current_user.id)
  end
end
