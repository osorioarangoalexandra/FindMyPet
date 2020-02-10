class ApplicationController < ActionController::Base

    before_action :authenticate_user!
    protect_from_forgery with: :exception
    
        # Prevent CSRF attacks by raising an exception.
        # For APIs, you may want to use :null_session instead.
     
end

