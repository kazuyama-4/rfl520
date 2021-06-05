class ShopsController < ApplicationController
  
  #indexアクションはTodoの一覧ページとTodoの入力ページを兼ねているので、新しいTodoを作成するためのインスタンスと、テーブルに保存されているTodoを取得します。
  def index
    @shop = Shop.new
    @shops = Shop.order('created_at ASC')
  end

#createアクションが呼ばれると何かしらのTodoが入力されていた場合（contentが空でない場合）は、Todoを保存しTodoの一覧ページにリダイレクトします。反対にTodoが入力されていない場合（contentが空の場合）は、Todoの保存はせずに、Todoの一覧ページを再描画します。
  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      respond_to do |format|
        format.html { redirect_to action: :index}
        format.json { render json: @shop}
      end
    else
      render :index, alert: 'Todoを入力してください'
    end
  end
#respond_to doを使用し、リクエストされたformatによって処理を分けるようにします。今回はhtmlと非同期通信のためのjsonを扱うようにしました。フォーマットがjsonの時の説明をします。この後jsファイル側で作成したtodo（@todo）を使用するためにrenderメソッドを使用し、作成したtodoをjson形式で返すようにします。

  private
  def shop_params
    params.require(:shop).permit(:stuff).merge(user_id: current_user.id)
  end
end