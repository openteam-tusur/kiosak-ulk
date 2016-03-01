class User
  include AuthClient::User

  Permission.available_roles.each do |role|
    define_method "#{role}?" do
      has_permission? role: role
    end
  end

  def app_name
    Settings['app.host'].to_s.parameterize('_')
  end
end
