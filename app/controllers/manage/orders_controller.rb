class Manage::OrdersController < Manage::ApplicationController
  before_action :find_item, only: [:edit, :show, :update]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to manage_orders_path, notice: "Документ добавлен"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to manage_orders_path, notice: "Данные обновлены"
    else
      render 'new'
    end
  end


  def destroy
    @order.destroy

    redirect_to manage_orders_path, notice: "Документ удален"
  end

  private

  def find_item
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:title, :document)
  end
end
