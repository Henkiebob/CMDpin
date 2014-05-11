class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :url
      t.string :image
      t.string :username
      t.integer :views
      t.string :created_at

      t.timestamps
    end
  end
end
