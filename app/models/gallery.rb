class Gallery < ActiveRecord::Base
   attr_accessible :name, :description
   extend FriendlyId
   friendly_id :name, :use => :slugged

   has_many :paintings

   validates_presence_of :name
end
