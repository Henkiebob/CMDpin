class DropTables < ActiveRecord::Migration
  def change
  	drop_table :minors_pins
  	drop_table :competences_pins
  end
end
