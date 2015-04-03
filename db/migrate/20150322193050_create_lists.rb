class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :creatorUserID
      t.integer :numShared

      t.timestamps
    end
  end
end
