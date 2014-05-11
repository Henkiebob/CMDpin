class CreatePinMinors < ActiveRecord::Migration
  def change
    create_table :pin_minors do |t|
      t.integer :pin_id
      t.integer :minor_id

      t.timestamps
    end
  end
end
