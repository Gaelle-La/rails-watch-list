class Movie < ApplicationRecord
  # Validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # Associations
  has_many :bookmarks, dependent: :restrict_with_exception
  has_many :lists, through: :bookmarks
end
