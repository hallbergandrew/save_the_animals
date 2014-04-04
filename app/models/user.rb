class User < ActiveRecord::Base
  has_many :profiles
  validates :username, :presence => true
  validates :email, :presence => true
  validates :email, uniqueness: true
  validates :username, uniqueness: true

end
