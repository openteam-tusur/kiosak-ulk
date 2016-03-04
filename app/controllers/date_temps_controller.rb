class DateTempsController < ActionController::Base

  layout "application"

  def show
    @date_temp = DateTemp.actual
  end
end
