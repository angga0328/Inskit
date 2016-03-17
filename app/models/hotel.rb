class Hotel < ActiveRecord::Base
  belongs_to :wisata
  has_many :albumfotohotels
  has_many :jenishotels
  mount_uploader :foto, FotoUploader
  reverse_geocoded_by :latitude, :longitude
  
  def name
    nama
  end
end
