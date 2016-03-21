class OrdersController < ActionController::Base

  layout "application"

  def index
    @orders = Order.all
  end

end
