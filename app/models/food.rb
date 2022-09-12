class Food < ApplicationRecord
  has_many :likes, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  mount_uploader :image, ImageUploader
end
