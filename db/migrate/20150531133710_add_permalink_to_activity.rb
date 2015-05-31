class AddPermalinkToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :permalink, :string
  end
end
