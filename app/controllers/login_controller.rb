class LoginController < ApplicationController
    skip_before_action :fetch_user, only:[:new, :create]
    def new
        @user = User.new
    end 
    
    def create
        @user = User.find_by(username:params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            # need to make path/ may need to rename
            redirect_to hometune_path
        else
            redirect_to new_login_path
        end   
    end 
    
    def destroy
        log_out_user!
        redirect_to new_login_path
    end 
    
end