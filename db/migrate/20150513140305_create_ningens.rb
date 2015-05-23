class CreateNingens < ActiveRecord::Migration
  def change
    create_table :ningens do |t|
      t.string :name
      t.text :description
      t.text :img_url

      t.timestamps
    end
  end
end
