class MoveTagsFromStoriesToTagsTable < ActiveRecord::Migration
  def up
    bio_posts = Story.where("tags LIKE '%bio%'")
    bio_posts.each do |bio|
      bio.tag_list.add("bio")
      bio.save
    end
  end

  def down

  end
end
