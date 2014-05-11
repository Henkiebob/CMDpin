class CompetencePins < ActiveRecord::Migration
  def change
    create_table :competences_pins, :id => false do |t|
      t.integer :competence_id
      t.integer :pin_id
     end
  end
end
