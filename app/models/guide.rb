class Guide < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :foto, FotoUploader

  has_many :guide_wisatas, dependent: :destroy
  has_many :wisatas, through: :guide_wisatas
  has_many :reviews

  acts_as_votable

  extend FriendlyId
  friendly_id :nama, use: :slugged

  def guide(wisata)
    guide_wisatas.create(wisata_id: wisata.id)
  end

  def unguide(wisata)
    guide_wisatas.find_by(wisata_id: wisata.id).destroy
  end

  def guiding?(wisata)
    wisatas.include?(wisata)
  end

end
