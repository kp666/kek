class AddPinToStory < ActiveRecord::Migration
  def change
    add_column :stories, :pinned, :boolean, default: false
  end
end
