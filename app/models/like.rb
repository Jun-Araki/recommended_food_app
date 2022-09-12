class Like < ApplicationRecord
  belongs_to :user
  belongs_to :food
  validates :user_id, uniqueness: {
    scope: :post_id,
    message: :duplicated
  }
end
