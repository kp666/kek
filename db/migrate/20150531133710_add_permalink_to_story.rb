class AddPermalinkToStory < ActiveRecord::Migration
  def change
    add_column :stories, :permalink, :string
  end
end
