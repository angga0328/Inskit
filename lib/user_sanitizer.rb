class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:nama, :username, :email, :password, :password_confirmation,
      :foto, :bio, :fotourl, :twitterlink)
  end

  def account_update
    default_params.permit(:nama, :username, :email, :password, :password_confirmation,
      :current_password, :foto, :bio, :fotourl, :twitterlink)
  end
end
