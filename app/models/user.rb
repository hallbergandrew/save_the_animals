class User < ActiveRecord::Base
  has_many :profiles
  has_and_belongs_to_many :documents

  validates :email, :presence => true
  validates :email, uniqueness: true

  has_secure_password

  validates_uniqueness_of :email

  after_create :send_welcome_message #, other callbacks..

  def send_welcome_message
    UserMailer.signup_confirmation(self).deliver
  end
end
