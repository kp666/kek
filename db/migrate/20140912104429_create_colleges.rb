class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.text :name

      t.timestamps
    end
  end
end
