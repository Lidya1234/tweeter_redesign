class Dropfollowings < ActiveRecord::Migration[6.0]
  def change
    drop_table :followings
  end
end
