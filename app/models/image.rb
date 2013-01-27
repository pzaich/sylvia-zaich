class Image < ActiveRecord::Base
  attr_accessible :painting_id, :asset
  belongs_to :painting

  has_attached_file :asset, 
    :styles => {:small => "200x", :thumb => "200x134>", :full => "x600"},
    :path => "image/:attachment/:style/:id.:extension"
end
