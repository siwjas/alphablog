class User < ApplicationRecord
  bofore_save { self.email = email.downcase }
  has_many :articles
  validates :username,  presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { in: 3..25 }

  VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, 
                    length: { maximum: 105 },
                    format: { with: VALID_EMAIL_REGEX }
end 