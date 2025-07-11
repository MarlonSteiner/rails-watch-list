class Movie < ApplicationRecord
  #has_and_belongs_to_many :list
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
