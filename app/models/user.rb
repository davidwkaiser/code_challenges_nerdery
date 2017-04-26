class User < ApplicationRecord
  #do security with BCrypt or Devise
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: true

  has_many :snacks, :through => :votes

  has_secure_password
end