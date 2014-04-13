class User < ActiveRecord::Base
  has_many :profiles
  has_many :documents

  validates :email, :presence => true
  validates :email, uniqueness: true

  has_secure_password

  validates_uniqueness_of :email

end
