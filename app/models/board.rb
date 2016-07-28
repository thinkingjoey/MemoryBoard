class Board < ActiveRecord::Base
  has_many :pictures
  belongs_to :user

#_add codes here for search form function#

end
