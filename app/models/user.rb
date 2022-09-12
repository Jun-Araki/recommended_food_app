class User < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_foods, through: :likes, source: :food
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
