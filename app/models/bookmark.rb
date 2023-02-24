class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6 }, presence: true
  #validates :movie_id, uniqueness: { scope: :list_id }
  validates :movie, :list, presence: true
  validates_uniqueness_of :movie, :scope => [:list]
end
