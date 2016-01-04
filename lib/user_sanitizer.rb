class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:nama, :username, :email, :password, :password_confirmation,
      :foto, :bio, :fotourl)
  end

  def account_update
    default_params.permit(:nama, :username, :email, :password, :password_confirmation,
      :current_password, :foto, :bio, :fotourl)
  end
end
