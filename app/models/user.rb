class User < ApplicationRecord
  has_many :foods, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable
end
