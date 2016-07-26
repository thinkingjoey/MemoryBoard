class Board < ActiveRecord::Base
  has_many :pictures
  belongs_to :user
  mount_uploader :image, ImageUploader
end
