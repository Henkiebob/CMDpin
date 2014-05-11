class AnotherChangeToTables < ActiveRecord::Migration
  def change
  	rename_table :competences_pin, :competences_pins
  	rename_table :minors_pin, :minors_pins
  end
end
