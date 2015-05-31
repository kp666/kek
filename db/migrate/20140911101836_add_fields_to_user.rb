class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :one_line_description, :string
    add_column :users, :career_objective, :text
  end
end
