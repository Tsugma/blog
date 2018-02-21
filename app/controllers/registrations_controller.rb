class RegistrationsController < Devise::RegistrationsController

    def sign_up_params
        params.required(:user).permit(:email, :password, :password_confirmation, :firstname, :lastname)
    end
end
