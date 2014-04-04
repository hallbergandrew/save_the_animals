class Breed < ActiveRecord::Base
  has_many :profiles, through: :mix_breeds
  has_many :mix_breeds

  belongs_to :animal

  validates :name, :presence => true
end
