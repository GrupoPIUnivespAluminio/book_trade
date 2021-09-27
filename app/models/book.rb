class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :cover
  has_many_attached :images
  has_many :conversations, dependent: :destroy
end
