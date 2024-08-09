class List < ApplicationRecord
  has_one_attached :photo
  # Validations
  validates :name, presence: true, uniqueness: true

  # Associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end
