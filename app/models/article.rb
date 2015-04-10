class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :comments
  belongs_to :users

  validates_presence_of :title
  validates_presence_of :user_id
end
