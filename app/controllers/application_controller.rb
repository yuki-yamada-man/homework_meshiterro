class ApplicationController < ActionController::Base
  before_action :config_permitted_parameters,if: :devise_controller?
  
  def after_sign_in_path_for(resource)
    post_images_path
  end

  protected
  def config_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
  end
end
