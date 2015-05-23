class AddColumnToNingen < ActiveRecord::Migration
  def change
    add_column :ningens, :category, :text
  end
end
