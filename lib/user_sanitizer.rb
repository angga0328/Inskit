class User::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:nama, :username, :email, :password, :password_confirmation,
      :foto, :bio)
  end

  def account_update
    default_params.permit(:nama, :username, :email, :password, :password_confirmation,
      :current_password, :foto, :bio)
  end
end
