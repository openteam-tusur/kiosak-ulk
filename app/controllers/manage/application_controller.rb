class Manage::ApplicationController < ActionController::Base
  load_and_authorize_resource class: false

  layout 'manage'

  def index
  end

end
