class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          :trackable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  has_one :address, dependent: :destroy
  has_one :phone_number, dependent: :destroy
  has_one :creditcard, dependent: :destroy
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :phone_number
  accepts_nested_attributes_for :creditcard
  has_many :sns_credentials
  has_many :comments
  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item"
  has_many :saling_items, -> { where("buyer_id is NULL") }, foreign_key: "seller_id", class_name: "Item"
  has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "seller_id", class_name: "Item"


  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name = auth.info.name
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d!@#\$%\^\&*\)\(+=._-]{7,128}\z/i
  VALID_KATAKANA_REGEX = /\A[\p{katakana}\p{blank}ー－]+\z/
  VALID_PHONE_REGEX = /\A\d{10,11}\z/
  NUMBER_REGEX = /\d{1,4}/
  NAME_REGEX = /\A([ぁ-んァ-ヶー一-龠])+\z/i
  KANA_REGEX = /\A([ァ-ン]|ー)+\z/i

        
  validates :email,             presence: {message: "メールを入力してください"}, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
  validates :password,          presence: true, length: {minimum: 7, maximum: 128}
  validates :nickname,          presence: true
  validates :last_name,         presence: true, length: {maximum: 20}, format: { with: NAME_REGEX }
  validates :first_name,        presence: true, length: {maximum: 20}, format: { with: NAME_REGEX }
  validates :last_name_kana,    presence: true, length: {maximum: 20}, format: { with: KANA_REGEX }
  validates :first_name_kana,   presence: true, length: {maximum: 20}, format: { with: KANA_REGEX }
  validates :birth_year,        presence: true, format: { with: NUMBER_REGEX }
  validates :birth_month,       presence: true, format: { with: NUMBER_REGEX }
  validates :birth_day,         presence: true, format: { with: NUMBER_REGEX }

  # validates :phone_number,      presence: true, uniqueness: true, format: { with: VALID_PHONE_REGEX }
  
end
