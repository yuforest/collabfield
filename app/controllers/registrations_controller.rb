class RegistrationsController < Device:RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit( :name,
                                  :email,
                                  :password,
                                  :password_comfirmation)
  end


  def account_update_params
    params.require(:user).permit( :name,
                                  :email,
                                  :password,
                                  :password_comfirmation,
                                  :current_password)
  end
end
