class Review < ActiveRecord::Base
  # before_create :post_to_twitter
  belongs_to :user
  belongs_to :wisata
  belongs_to :guide
  mount_uploader :foto, FotoUploader
  before_create :post_to_twitter

  acts_as_commentable
  acts_as_votable
  acts_as_messageable

  def post_to_twitter
    if user.twitterlink && user.uid
      user.twitter.update(content)
    end
    # if content.length < 102
    #   user.twitter.update(content + " via https://indonesiaku.herokuapp.com")
    # else
    #   user.twitter.update(content[0..98] + " ... via https://indonesiaku.herokuapp.com") if user.twitterlink && user.uid
    # end
  end
end
