class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if current_user
      flash[:success] = "Signed in successfully."
    user_path(resource)
    # @user = User.find(params[:id])
    # redirect_to user_path(@user.id)
    end
  end

  def after_sign_out_path_for(resource)
    flash[:notice] = "Signed out successfully."
    root_path(resource)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end

end
