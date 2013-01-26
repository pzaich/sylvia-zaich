class Image < ActiveRecord::Base
  attr_accessible :painting_id
  belongs_to :painting

  has_attached_file :asset, 
    :styles => {:small => "200x", :thumb => "200x134>"},
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :path => "painting/:attachment/:style/:id.:extension",
    :bucket => "sylviazaich"
end
