class CreateOpinions < ActiveRecord::Migration[6.0]
  def change
    create_table :opinions do |t|
      t.references :Author, null: false, index: true
      t.text :Text

      t.timestamps
    end
    add_foreign_key :opinions ,:users, column: :Author_id
  end
end
