class Albumfotohotel < ActiveRecord::Base
  belongs_to :hotel
  mount_uploader :foto, FotoUploader
end
