class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  before_save { |user| user.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :name, :presence => true , :length => {maximum: 50}
  validates :email, :format => {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
  validates :password, :password_confirmation, :presence => true,  :length=> { minimum: 6 }
  #validates_confirmation_of :password


end
