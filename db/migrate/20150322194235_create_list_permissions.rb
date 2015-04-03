class CreateListPermissions < ActiveRecord::Migration
  def change
    create_table :list_permissions do |t|
      t.integer :listId
      t.integer :UserId
      t.string :permissionType
      t.string :shareStatus

      t.timestamps
    end
  end
end
