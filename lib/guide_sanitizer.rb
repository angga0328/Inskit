class Guide::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_up
    default_params.permit(:nama, :alamat, :telp, :email, :password, :password_confirmation,
      :foto, :bio)
  end

  def account_update
    default_params.permit(:nama, :alamat, :telp, :email, :password, :password_confirmation,
      :current_password, :foto, :bio)
  end
end
