class User < ActiveRecord::Base
  before_save { self.email = self.email.downcase}
  validates :name,  presence: true,  length: {maximum: 50} #this is for validating presence of name and length
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i #code for the format of the email
  validates :email, presence: true, length: { maximum: 255 }, #validates the presence of the email, length, format,
            format: { with: VALID_EMAIL_REGEX },              #uniqueness and being case sensitive.\
            uniqueness: {case_sensitive: false}

has_secure_password
  validates :password, length:{minimum:6}

end
