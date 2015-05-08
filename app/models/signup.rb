class Signup < ActiveRecord::Base
  attr_accessible :dob, :email_id, :first_name, :last_name, :password, :username
  validates :email_id,
          :presence => true,
          :uniqueness => { :case_sensitive => true }
  validates :first_name,
          :presence => true
  validates :last_name,
          :presence => true
  validates :username,
          :presence => true,
          :uniqueness => { :case_sensitive => true }
  validates :password,
          :presence => true
  def self.authenticate(login_username, login_password)
    if login_username.length == 0 or login_password.length == 0
      return false
    end
    if(Signup.exists?(:username => login_username))
      login_1 = Signup.where("username = ?", login_username).first
    else
      return false
    end
    if !login_1.eql? "" and login_1.password.eql? login_password
      return true
    else
      return false
    end
  end
end
