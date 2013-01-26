class Painting < ActiveRecord::Base
  attr_accessible :description, :gallery, :name
  has_many :images
  belongs_to :gallery
end
