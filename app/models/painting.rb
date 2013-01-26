class Painting < ActiveRecord::Base
  attr_accessible :description, :gallery_id, :name
end
