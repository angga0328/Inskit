class Hotel < ActiveRecord::Base
  belongs_to :wisata
  mount_uploader :foto, FotoUploader
  reverse_geocoded_by :latitude, :longitude
  
end
