class MinorPins < ActiveRecord::Migration
  def change
    create_table :minors_pins, :id => false do |t|
      t.integer :minor_id
      t.integer :pin_id
     end
  end
end
