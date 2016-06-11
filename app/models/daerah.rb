class Daerah < ActiveRecord::Base
  mount_uploader :foto, FotoUploader
  has_many :wisatas
  
  extend FriendlyId
  friendly_id :nama, use: :slugged

  def name
    nama
  end
end
