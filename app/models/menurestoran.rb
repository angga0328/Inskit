class Menurestoran < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :wisata
  mount_uploader :foto, FotoUploader
end
