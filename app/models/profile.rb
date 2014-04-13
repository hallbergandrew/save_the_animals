class Profile < ActiveRecord::Base
  has_many :breeds, through: :mix_breeds
  has_many :mix_breeds

  belongs_to :user
  belongs_to :document
  belongs_to :animal


  validates :name, :presence => true
  validates :gender, :presence => true
  validates :description, :presence => true
end
