class LogoutController < ApplicationController
  def index
  	unless session[:user].nil?
  		session.delete(:user)
  	end
	respond_to do |format|
		format.html { redirect_to login_index_path, notice: 'You have been logged out' }
		format.json { render json: login_index_path, status: :created, location: login_index_path }
	end
  end
end
