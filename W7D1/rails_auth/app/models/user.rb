require 'bcrypt'

class User < ApplicationRecord

    validates :username, presence: true, uniqueness: true
    validates :user
    validates :password, length: {minimum: 6, allow_nil: true}

    before_validation :ensure_session_token

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
    end

    def self.generate_session_token
        SecureRandon::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCryp::Password.new(self.password_digest).is_password?(password)
    end

    
end
