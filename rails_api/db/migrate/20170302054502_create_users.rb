class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :slack_user_Id
      t.string :name
      t.integer :last_emailed_task_id
      t.boolean :enabled

      t.timestamps
    end
  end
end
