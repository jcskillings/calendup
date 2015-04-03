class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :creatorInvCode
      t.string :name
      t.text :description
      t.date :startDate
      t.time :startTime
      t.date :endDate
      t.time :endTime
      t.boolean :private
      t.boolean :everyone
      t.boolean :friends
      t.boolean :family
      t.boolean :work
      t.boolean :school
      t.boolean :personal

      t.timestamps
    end
  end
end
