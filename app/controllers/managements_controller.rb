class ManagementsController < ApplicationController
  before_action :authenticate_user!
  def index
    @management = Management.new
    @management1 = Management.where(category_id: id = 2, user_id: id = current_user.id)
    @management2 = Management.where(category_id: id = 3, user_id: id = current_user.id)
    @management3 = Management.where(category_id: id = 4, user_id: id = current_user.id)
    @management4 = Management.where(category_id: id = 5, user_id: id = current_user.id)
    @management5 = Management.where(category_id: id = 6, user_id: id = current_user.id)
    @management6 = Management.where(category_id: id = 7, user_id: id = current_user.id)
  end

  def create
    @management = Management.new(management_params)
    if @management.save
      redirect_to managements_path(@management)
    else
      render :index
    end
  end

  def destroy
    Management.find(params[:id]).destroy
    redirect_to managements_path
  end

  private

  def management_params
    params.require(:management).permit(:item, :category_id, :deadline).merge(user_id: current_user.id)
  end
end
