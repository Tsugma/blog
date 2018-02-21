class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, presence: true

    validates :published_date, presence: true

    belongs_to :user
    has_many :comments

    validates :picture, presence: true
    mount_uploader :picture, PostPictureUploader
end
