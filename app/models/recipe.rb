class Recipe < ActiveRecord::Base
  attr_accessible :description, :ingredients, :title, :category_id, :image, :grade, :preparation, :comments, :author_id

  belongs_to :category

  has_many :comments

  validates_presence_of :description, :ingredients, :title, :category_id, :grade, :preparation

  scope :published, lambda {
  	where(published_at < ?", false, Time.current)
  }
  scope :search, lambda { |terms| 
  	where("title LIKE :t OR ingredients LIKE :t OR preparation LIKE :t", :t => "%#{terms}%")
  }

end
