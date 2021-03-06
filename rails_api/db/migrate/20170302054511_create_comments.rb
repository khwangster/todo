class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :task, index: true
      t.text :message
      t.timestamps
    end
  end
end
