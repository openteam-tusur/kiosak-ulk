class Manage::ApplicationController < CommonController

  layout 'manage'

  load_and_authorize_resource

  skip_authorize_resource only: :index

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_to manage_root_path, :alert => 'Недостаточно прав для выполнения операции'
    else
      redirect_to sign_in_url, :alert => 'Для доступа необходимо войти в систему'
    end
  end

end
