class Document < ActiveRecord::Base
  has_attached_file :attachment
  has_many_and_belongs_to :user
  has_many_and_belongs_to :profile


end
