class Review < ActiveRecord::Base
  belongs to :restaurant

  validates :rating, presence: true
  validates :body, presence: true
end
