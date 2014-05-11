class RenameTables < ActiveRecord::Migration
  def change
  	rename_table :pin_competences, :competences_pin
  	rename_table :pin_minors, :minors_pin
  end
end
