class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.date :day
      t.references :user, index: true
      t.text :description
      t.string :status

      t.timestamps
    end
  end
end
