class LoginController < ApplicationController
  def index
    
  end
  
  def validate
  login_username = params[:login_validate][:username]
  login_password = params[:login_validate][:password]
  @login_1 = Signup.new(params[:id])
    respond_to do |format|
	  if login_username.length == 0 or login_password.length == 0
		format.html { redirect_to login_index_path, notice: 'Fields cannot be blank' }
		format.json { render json: login_index_path, status: :created, location: login_index_path }
	  end
      if Signup.exists?(:username => login_username)
			format.html { redirect_to home_index_path, notice: 'Logged in successfully'}
			format.json { render json: home_index_path, status: :created, location: home_index_path }
      else
			format.html { redirect_to login_index_path, notice: 'Invalid username/password' }
			format.json { render json: login_index_path, status: :created, location: login_index_path }
	  end
    end
  end
end
