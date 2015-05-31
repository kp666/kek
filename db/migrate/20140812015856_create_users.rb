class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :email
      t.string :name
      t.string :mobile_number
      t.string :uniq_id

      t.timestamps
    end
  end
end
