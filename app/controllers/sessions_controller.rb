class SessionsController < ApplicationController
    def new
    end

    def create
        #   user = User.find_by_email(params[:email])
        #   if user&.authenticate(params[:password])
        #   # Equivalent to:
        #   # if user && user.authenticate(params[:password])
        #     session[:user_id] = user.id
        #     redirect_to root_path, notice: 'Logged In'
        #   else
        #     flash[:alert] = "Wrong email or password"
        #     render :new
        #   end
    end

    def destroy
        # session[:user_id] = nil
        # flash[:notice] = "logged out"
        # redirect_to root_path
    end
end
