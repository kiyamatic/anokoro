class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :age
      t.text :event
      t.references :ningen, index: true

      t.timestamps
    end
  end
end
