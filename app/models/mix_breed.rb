class MixBreed < ActiveRecord::Base
  belongs_to :profile
  belongs_to :breed

end
