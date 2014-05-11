class ChangeUrltoLink < ActiveRecord::Migration
  def change
  	rename_column :pins, :url, :link
  end
end
