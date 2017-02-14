class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :createdat
      t.boolean :status

      t.timestamps
    end
  end
end
