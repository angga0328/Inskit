class Jenishotel < ActiveRecord::Base
  belongs_to :hotel
  mount_uploader :foto, FotoUploader
end
