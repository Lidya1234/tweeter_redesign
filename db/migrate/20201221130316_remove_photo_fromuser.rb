class RemovePhotoFromuser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :Photo, :string
  end
end
