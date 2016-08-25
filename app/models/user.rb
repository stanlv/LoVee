class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable,
           :omniauthable, :omniauth_providers => [:facebook]

  has_many :bookings
  has_many :challenges, through: :bookings
  belongs_to :partner, class_name: "User"

  validates :status, inclusion: { in: %w(created completed failed) } # ['created', 'completed', 'failed']

  after_create :send_welcome_email, :assign_partner, :assign_partner_via_email

  def self.find_for_facebook_oauth(auth)
    user_params = auth.to_h.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)

    user = User.where(provider: auth.provider, uid: auth.uid).first || User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  def total_kisses
    return 200 if bookings.where(status: 'completed').empty?
    bookings.where(status: 'completed').map(&:category).sum(&:kisses)
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

  def assign_partner_via_email
    partner = User.where(partner_email: email).first
    return nil unless partner
    partner.update(partner_id: id)
    update(partner_id: partner.id, partner_email: partner.email)
  end

  def assign_partner
    if partner_id
      partner = User.find(partner_id)
      partner.partner_id = id
      partner.save
    end
  end
end
