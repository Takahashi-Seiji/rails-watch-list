class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, presence: true, length: { minimum: 7 }
  validates_uniqueness_of :list_id, scope: :movie_id
end
