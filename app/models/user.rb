class User < ApplicationRecord
    has_many :followings
    has_many :followers, through: :followings, dependent: :destroy
    has_many :followeds, through: :followings, dependent: :destroy
    has_many :opinions
    has_many :authors, through: :opinions, dependent: :destroy
    validates :Username, presence: true
    validates :Fullname, presence: true
    validates :Photo, presence: true
    validates :Coverimage, presence: true

end
