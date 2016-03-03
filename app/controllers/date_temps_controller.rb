class DateTempsController < ActionController::Base

  layout "application"

  def show
    @date_temp = DateTemp.where(date_title: Date.today).first
  end
end
