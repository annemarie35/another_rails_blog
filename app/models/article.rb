class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :comments
  belongs_to :users
end
