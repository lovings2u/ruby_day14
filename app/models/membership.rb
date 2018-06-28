class Membership < ApplicationRecord
    belongs_to :user
    belongs_to :daum
    # validates_uniqueness_of :user_id, scope: daum_id
end
