class User < ApplicationRecord
    has_secure_password
    validates :user_name, uniqueness: true,
                          presence: true
    validates :password_digest, presence: true
    # user_name 컬럼에 unique 속성 부여
    
    has_many :memberships
    has_many :daums, through: :memberships
    has_many :posts
end
