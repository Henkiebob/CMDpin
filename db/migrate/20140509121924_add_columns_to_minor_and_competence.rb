class AddColumnsToMinorAndCompetence < ActiveRecord::Migration
  def change
  	add_column :competences, :pinid, :integer
  	add_column :minors, :pinid, :integer
  	add_column :favorites, :pinid, :integer
  	add_column :favorites, :userid, :integer
  end
end
