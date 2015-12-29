class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :wisata
  belongs_to :guide
  mount_uploader :foto, FotoUploader
end
