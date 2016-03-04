class Hotel < ActiveRecord::Base
  belongs_to :wisata
  has_many :albumfotohotels
  mount_uploader :foto, FotoUploader
  reverse_geocoded_by :latitude, :longitude
  
end
