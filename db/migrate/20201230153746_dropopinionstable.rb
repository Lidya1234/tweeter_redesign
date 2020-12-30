class Dropopinionstable < ActiveRecord::Migration[6.0]
  def change
    drop_table :opinions
  end
end
