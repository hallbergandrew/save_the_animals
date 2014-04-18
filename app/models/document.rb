class Document < ActiveRecord::Base
  has_attached_file :attachment
  has_and_belongs_to_many :user
  has_and_belongs_to_many :profile


end
