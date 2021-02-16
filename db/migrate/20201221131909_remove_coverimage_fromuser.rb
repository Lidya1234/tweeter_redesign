class RemoveCoverimageFromuser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :Coverimage, :string
  end
end
