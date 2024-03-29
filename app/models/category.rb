class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :recipes

  validates_presence_of :name
end
