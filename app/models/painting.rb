class Painting < ActiveRecord::Base
  attr_accessible :description, :gallery, :name
  extend FriendlyId
  friendly_id :name, :use => :slugged

  has_many :images
  belongs_to :gallery
end
