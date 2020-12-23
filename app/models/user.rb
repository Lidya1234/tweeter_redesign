class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
    has_many :followships, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_users, through: :followships, source: :followed
    has_many :posts, dependent: :destroy
   validates :Username, presence: true, uniqueness: true
    validates :Fullname, presence: true
    validates :Photo, presence: true
   validates :Coverimage, presence: true


   def following?(user)
    followships.find_by_followed_id(user.id)
   end
   def follow(user)
    followships.create!(followed_id: user.id)
   end
   
   def following?(user)
    followships.find_by_followed_id(user.id).destroy
   end
end
