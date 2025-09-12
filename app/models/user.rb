class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 4..12 }
  validates :password, presence: true, length: { in: 6..16 }
  validates :email, presence: true, uniqueness: true, format: URI::MailTo::EMAIL_REGEXP
end
