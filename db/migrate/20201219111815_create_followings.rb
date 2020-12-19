class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.references :Follower, null: false, index: true
      t.references :Followed, null: false, index: true

      t.timestamps
    end
    add_foreign_key :followings ,:users, column: :Follower_id
    add_foreign_key :followings ,:users, column: :Followed_id
  end
end
