class Daerah < ActiveRecord::Base
  mount_uploader :foto, FotoUploader
  has_many :wisatas
  
  def name
    nama
  end
end
