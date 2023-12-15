class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews
  has_one_attached :image

  validates :name, presence: true, uniqueness: true
end
