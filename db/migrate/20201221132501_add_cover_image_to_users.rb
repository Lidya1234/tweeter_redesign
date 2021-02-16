class AddCoverImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :Coverimage, :string
  end
end
