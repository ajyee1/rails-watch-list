class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list

  validates :comment,
            length: { minimum: 6, message: "Comment can't be shorter that 6 characters" }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'Must be unique for given movie/list couple' }
end
