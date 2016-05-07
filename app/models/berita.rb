class Berita < ActiveRecord::Base
  mount_uploader :foto, FotoUploader
end
