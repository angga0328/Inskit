class Wisata < ActiveRecord::Base
  belongs_to :daerah
  belongs_to :kategori
  has_many :reviews, dependent: :destroy
  mount_uploader :foto, FotoUploader
  reverse_geocoded_by :latitude, :longitude

  has_many :guide_wisatas, dependent: :destroy
  has_many :guides, through: :guide_wisatas
  has_many :hotels
  has_many :restaurants
  has_many :videos
  has_many :menurestorans
  
  acts_as_votable
  
  def name
    nama
  end

  def self.search(search)
    where("nama iLIKE ?", "%#{search}%")
    where("alamat iLIKE ?", "%#{search}%")
    where("deskripsi iLIKE ?", "%#{search}%")
  end
end
