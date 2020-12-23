class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
    has_many :followings
   # has_many :Followers, through: :followings, dependent: :destroy
    #has_many :Followeds, through: :followings, dependent: :destroy
    has_many :posts, dependent: :destroy
   validates :Username, presence: true, uniqueness: true
    validates :Fullname, presence: true
    validates :Photo, presence: true
   validates :Coverimage, presence: true

end
