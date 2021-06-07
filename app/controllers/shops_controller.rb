class ShopsController < ApplicationController
  def index
    @shop = Shop.new
    @shops = Shop.order('created_at ASC')
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      respond_to do |format|
        format.html { redirect_to action: :index }
        format.json { render json: @shop }
      end
    else
      @shops = Shop.includes(:user)
      render :index, alert: 'Todoを入力してください'
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:stuff).merge(user_id: current_user.id)
  end
end
