class Review < ActiveRecord::Base
  before_create :post_to_twitter

  belongs_to :user
  belongs_to :wisata
  belongs_to :guide
  mount_uploader :foto, FotoUploader
  before_create :post_to_twitter

  def post_to_twitter
    unless self.user.twitter
      if content.length < 123
        user.twitter.update(content + " via @")
      else 
        user.twitter.update(content[0..117] + " ... via @") if user.twitterlink && user.uid
      end
    end
  end
end
