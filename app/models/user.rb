class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable, :recoverable,
  :rememberable, :trackable, :validatable
  mount_uploader :foto, FotoUploader
  has_many :reviews, dependent: :destroy
  after_create :twitterimage

  has_many :active_relationships,  class_name:  "Relationship",
                                   foreign_key: "follower_id",
                                   dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
  has_many :following, through: :active_relationships,  source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  acts_as_voter
  acts_as_messageable

  def mailboxer_email(object)
    if object.class==Mailboxer::Notification
     return nil
    else
     email
    end
  end

  # Follows a user.
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end

  def twitter
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = 'QuqTKLz0pYQnvY5kdfU8CLmDV'
      config.consumer_secret     = 'CayiHN1brVvjqLgLmzFszkUDw9CM8pOIde0NBY4LMFSmGwZ23x'
      config.access_token        = self.token
      config.access_token_secret = self.secret
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.nickname
      user.nama =  auth.info.name
      user.bio = auth.info.description
      user.fotourl = auth.info.image
      user.token = auth.credentials.token
      user.secret = auth.credentials.secret
      user.twitterlink = true
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end

  private
    def twitterimage
      if self.fotourl
        self.remote_foto_url = self.fotourl
      end
    end
end
