class Review < ActiveRecord::Base
  before_create :post_to_twitter
  
  belongs_to :user
  belongs_to :wisata
  belongs_to :guide
  mount_uploader :foto, FotoUploader
  before_create :post_to_twitter

  def post_to_twitter
    user.twitter.update(content)
  end
end
