class Albumfotorestoran < ActiveRecord::Base
  belongs_to :restaurant
  mount_uploader :foto, FotoUploader
end
