class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:
      [profile_attributes:
        [:name,
         :nickname,
         :birthdate,
         :postal_code,
         :prefecture,
         :municipality,
         :block,
         :payment_methods]
      ])
  end

end
