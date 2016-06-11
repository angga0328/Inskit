class Hotel < ActiveRecord::Base
  belongs_to :wisata
  has_many :albumfotohotels
  has_many :jenishotels
  mount_uploader :foto, FotoUploader
  reverse_geocoded_by :latitude, :longitude

  extend FriendlyId
  friendly_id :nama, use: :slugged
  
  def name
    nama
  end
end
