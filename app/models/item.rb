class Item < ActiveRecord::Base
  belongs_to :location
  has_and_belongs_to_many :categories

  validates :name, :presence => true
  validates :rating, :inclusion => {:in => 1..5}
  
  scope :highest_rating, order("rating desc")
  scope :top5_rating, highest_rating.limit(5)
end
