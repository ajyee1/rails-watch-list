class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: { message: 'Cannot be blank' }, uniqueness: { message: 'Title must be unique' }
  validates :overview, presence: {message: 'Cannot be blank' }
end
