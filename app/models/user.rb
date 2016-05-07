class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable, :recoverable, 
  :rememberable, :trackable, :validatable
  mount_uploader :foto, FotoUploader
  has_many :reviews, dependent: :destroy
  after_create :twitterimage
  
  acts_as_voter

  def twitter
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = 'tKVBot5vLarsaklyRUEaYt5xs'
      config.consumer_secret     = '7vs5aJViuT8PsLvy0SSJXFAaC5qSa9zyHclWkDkWqo9SbdSf0P'
      config.access_token        = token
      config.access_token_secret = secret
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
