class GuideWisata < ActiveRecord::Base
  belongs_to :guide
  belongs_to :wisata
  validates :guide_id, presence: true
  validates :wisata_id, presence: true
end
