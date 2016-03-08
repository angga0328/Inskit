class Restaurant < ActiveRecord::Base
  belongs_to :wisata
  has_many :albumfotorestorans
  has_many :menurestorans
  mount_uploader :foto, FotoUploader
  reverse_geocoded_by :latitude, :longitude
end
