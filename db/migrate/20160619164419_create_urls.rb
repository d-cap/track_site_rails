class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :title
      t.string :url
      t.integer :privacy
      t.string :current_hash

      t.timestamps null: false
    end
  end
end
