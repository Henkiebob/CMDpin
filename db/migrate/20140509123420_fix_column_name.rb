class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :competences, :pinid, :pin_id
	rename_column :minors, :pinid, :pin_id
	rename_column :favorites, :pinid, :pin_id
	rename_column :favorites, :userid, :user_id
	rename_column :pins, :userid, :user_id
  end
end
