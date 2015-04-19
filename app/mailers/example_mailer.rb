class ExampleMailer < ActionMailer::Base
  default from: "ongaku597-noreply@gmail.com"

  def new_user(user)
    @user = user
    emailText = 'Hi ' + @user.first_name + ' ' + @user.last_name + ',

Welcome to Ongaku! 
Your username is: ' + @user.username + '
To login please go to: http://localhost:3000/


Thank you for signing up!
Team Ongaku'
    mg_client = Mailgun::Client.new Figaro.env.api_key 
    message_params = {:from    => Figaro.env.gmail_username,
                      :to      => @user.email_id,
                      :subject => 'Welcome to Ongaku',
                      :text    => emailText}
    mg_client.send_message Figaro.env.domain, message_params
  end

def forgot_pwd(user, email_id)
  @user = user
    emailText = 'Hi ' + @user.first_name + ' ' + @user.last_name + ',

Your password is: ' + @user.password + '
Please change your password as soon as possible. 
To login please go to: http://localhost:3000/


Thank you!
Team Ongaku'
    mg_client = Mailgun::Client.new Figaro.env.api_key 
    message_params = {:from    => Figaro.env.gmail_username,
                      :to      => email_id,
                      :subject => 'Ongaku: Retrieve Password',
                      :text    => emailText}
    mg_client.send_message Figaro.env.domain, message_params
  end


end
