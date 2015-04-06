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
end
