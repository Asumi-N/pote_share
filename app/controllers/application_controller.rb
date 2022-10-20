class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def top
        @q = Room.ransack(params[:q])
        @results = @q.result(distinct: true)
    end
    
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
 
end
