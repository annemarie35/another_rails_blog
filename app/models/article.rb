class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :comments
  belongs_to :user

  validates_presence_of :title, presence: { message: "can't be empty"}
  validates_presence_of :adress, presence: { message: "can't be empty"}
  validates_presence_of :user_id

  geocoded_by :adress
  after_validation :geocode
end
