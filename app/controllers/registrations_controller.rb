class RegistrationsController < Devise::RegistrationsController

  # def edit
  #   @user = User.find(current_user.id)
  # end

  # def update
  #   @user = User.find(current_user.id)
  #   if @user.update(user)
  #     redirect_to root_path
  #   else
  #     render 'edit'
  #   end
  # end

  private
  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :description, :user_image)
  end
end