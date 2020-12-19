class Opinion < ApplicationRecord
  belongs_to :user
  belongs_to :Author, class_name: 'User'
  validates :Text, presence :true
 
end
