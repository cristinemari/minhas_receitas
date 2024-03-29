class Comment < ActiveRecord::Base
  
  attr_accessible :author, :body, :email, :recipe, :url

  belongs_to :recipe

  validates_presence_of :body, :recipe

  validates_associated :recipe

  with_options :allow_blank => true do |c|
		c.validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
		c.validates_format_of :url,   :with => /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix 
	end

end
