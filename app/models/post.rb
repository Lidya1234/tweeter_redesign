class Post < ApplicationRecord
  belongs_to :user
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
  validates :text, presence: true
end
