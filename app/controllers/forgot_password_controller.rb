class ForgotPasswordController < ApplicationController
  def index
  end

  def validate
	email_address = params[:forgot_password_validate][:email_id]
	respond_to do |format|
	  if email_address.length == 0
		format.html { redirect_to forgot_password_path, notice: 'Field cannot be blank' }
		format.json { render json: forgot_password_path, status: :created, location: forgot_password_path }
  	  else
		if Signup.exists?(:email_id => email_address)
		  login_1 = Signup.where("email_id= ?", email_address).first
	   	  ExampleMailer.forgot_pwd(login_1).deliver
		  format.html { redirect_to login_index_path, notice: "Your password has been sent to your email address" }
		  format.json { render json: login_index_path, status: :created, location: login_index_path }
		else
		  format.html { redirect_to forgot_password_path, notice: "Email Address does not exist"}
		  format.json { render json: forgot_password_path, status: :created, location: forgot_password_path }
		end
	  end
    end
  end
end
