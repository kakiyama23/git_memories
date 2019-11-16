class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name,:first_name,:birthday])
  end
  
   def after_sign_in_path_for(resource)
    shots_path # ログイン後に遷移するpathを設定
   end
end
