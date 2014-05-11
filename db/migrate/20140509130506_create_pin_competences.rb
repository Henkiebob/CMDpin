class CreatePinCompetences < ActiveRecord::Migration
  def change
    create_table :pin_competences do |t|
      t.integer :pin_id
      t.integer :competence_id

      t.timestamps
    end
  end
end
