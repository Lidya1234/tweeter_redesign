class User < ApplicationRecord
    mount_uploader :Photo, ImageUploader
    mount_uploader :Coverimage, ImageUploader
    has_many :followships, foreign_key: "follower_id", dependent: :destroy
    has_many :followed_users, through: :followships, source: :followed
    has_many  :inverse_followships, foreign_key: "followed_id", class_name: "Followship", dependent: :destroy
    has_many :followers, through: :inverse_followships, source: :follower
    has_many :posts, dependent: :destroy
   validates :Username, presence: true, uniqueness: true
    validates :Fullname, presence: true
    validates :Photo, presence: true
   validates :Coverimage, presence: true
   
   scope :who_to_follow, -> (user_id) {
      where(
        "id NOT IN ( SELECT followed_id 
                 FROM followships
                 WHERE follower_id = ?
               )",
        user_id
      )
    }

    scope :followed_by, -> (user_id) {
      where(
        "id IN ( SELECT follower_id 
                 FROM followships
                 WHERE followed_id = ?
               )",
        user_id
      )
    }
   def follow(user)
      followships.create!(followed_id: user.id)
    end
  
    def unfollow(user)
      followships.find_by(followed_id: user.id).destroy
    end
  
    def following?(user)
      followed_users.include?(user)
    end
end
