class Game < ApplicationRecord
  has_and_belongs_to_many :genres
  has_one_attached :thumbnail
  acts_as_votable

  def resized_thumbnail
    thumbnail.variant(resize: '240x135!')
  end
end
