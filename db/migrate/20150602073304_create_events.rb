class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.datetime :from
      t.datetime :to

      t.timestamps
    end
  end
end
