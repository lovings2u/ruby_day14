class Daum < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships
    has_many :posts
    
    # def self.메소드명 -> 클래스 메소드
    #   로직안에서 self를 쓸수 없음
    # end
    
    # def 메소드명 -> 인스턴스 메소드
    #     로직 안에서 self를 쓸수 있음
    #     이 self == 현재 자신 객체
    # end
    
    def is_member?(user)
        self.users.include?(user)
    end
end
