class Animal < ActiveRecord::Base
  has_many :breeds
  has_many :profiles

  validates :name, :presence => true
end
