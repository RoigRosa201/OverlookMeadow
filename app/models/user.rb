class User < ApplicationRecord
    has_many :articles
    before_save { self.email = email.downcase }
    validates :username, presence: true, 
        uniqueness: { case_sensitive: false }, 
        length: { minimum: 3, maximum: 25}
    VALID_EMAIL_REGEX = /(?<month>\d{1,2})\/(?<day>\d{1,2})\/(?<year>\d{4})/i
    validates :email, presence: true, length: { maximum: 100},
        uniqueness: { case_sensitive: false}, 
        format: { with: VALID_EMAIL_REGEX }
end