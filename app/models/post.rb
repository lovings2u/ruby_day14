class Post < ApplicationRecord
    mount_uploader :image_path, ImageUploader
    # mount_uploader :file_path, FileUploader
    has_many :comments
    belongs_to :user
    belongs_to :daum
end
