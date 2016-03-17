class Review < ActiveRecord::Base
  before_create :post_to_twitter

  belongs_to :user
  belongs_to :wisata
  belongs_to :guide
  mount_uploader :foto, FotoUploader
  before_create :post_to_twitter

  def post_to_twitter
    if content.length < 100
      user.twitter.update(content + " via https://indonesiaku.herokuapp.com")
    else 
      user.twitter.update(content[0..95] + " ... via https://indonesiaku.herokuapp.com") if user.twitterlink && user.uid
    end
  end
end
