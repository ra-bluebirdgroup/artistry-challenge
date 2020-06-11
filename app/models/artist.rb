class Artist < ApplicationRecord
  validates :name, presence: true
  validates :title, uniqueness: true

  has_many :artist_instruments
  has_many :instruments, through: :artist_instruments
end
