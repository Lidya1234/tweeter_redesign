class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :Username
      t.string :Fullname
      t.string :Photo
      t.string :Coverimage

      t.timestamps
    end
  end
end
