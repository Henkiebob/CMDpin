class AddUseridToPin < ActiveRecord::Migration
  def change
  	add_column :pins, :userid, :integer
  end
end
