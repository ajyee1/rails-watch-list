class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true, uniqueness: { message: "The name of the list must be unique" }
end
