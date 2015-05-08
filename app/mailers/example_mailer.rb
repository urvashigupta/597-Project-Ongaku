class ExampleMailer < ActionMailer::Base
  default from: "ongaku597-noreply@gmail.com"

  def new_user(user)
    @user = user
    emailText = 'Hi ' + @user.first_name + ' ' + @user.last_name + ',

Welcome to Ongaku! 
Your username is: ' + @user.username + '
To login please go to: https://cryptic-wave-8589.herokuapp.com/


Thank you for signing up!
Team Ongaku'
    mg_client = Mailgun::Client.new Figaro.env.api_key 
    message_params = {:from    => Figaro.env.gmail_username,
                      :to      => @user.email_id,
                      :subject => 'Welcome to Ongaku',
                      :text    => emailText}
    mg_client.send_message Figaro.env.domain, message_params
  end

def forgot_pwd(user)
  @user = user
    emailText = 'Hi ' + @user.first_name + ' ' + @user.last_name + ',

Your username is: ' + @user.username + '
Your password is: ' + @user.password + '
Please change your password as soon as possible. 
To login please go to: https://cryptic-wave-8589.herokuapp.com/


Thank you!
Team Ongaku'
    mg_client = Mailgun::Client.new Figaro.env.api_key 
    message_params = {:from    => Figaro.env.gmail_username,
                      :to      => @user.email_id,
                      :subject => 'Ongaku: Your User Information',
                      :text    => emailText}
    mg_client.send_message Figaro.env.domain, message_params
  end


end
