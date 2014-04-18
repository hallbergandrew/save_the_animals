class Profile < ActiveRecord::Base
  has_many :breeds, through: :mix_breeds
  has_many :mix_breeds
  has_and_belongs_to_many :documents

  belongs_to :user

  belongs_to :animal


  validates :name, :presence => true
  validates :gender, :presence => true
  validates :description, :presence => true
end
