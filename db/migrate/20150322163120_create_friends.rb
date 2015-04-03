class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :title
      t.string :nickname
      t.boolean :all
      t.boolean :family
      t.boolean :friend
      t.boolean :work
      t.boolean :school
      t.boolean :personal

      t.timestamps
    end
  end
end
