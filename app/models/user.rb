class User < ApplicationRecord
  has_many :foods, dependent: :destroy
  has_many :likes, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
