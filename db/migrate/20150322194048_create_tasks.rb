class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :hidden
      t.boolean :completed
      t.integer :whoCompleted
      t.timestamp :dateCompleted
      t.integer :whoCreated
      t.string :createPermission
      t.integer :whoHid
      t.timestamp :dateHidden
      t.integer :whoEdit
      t.timestamp :lastEdit

      t.timestamps
    end
  end
end
