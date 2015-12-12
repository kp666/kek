class PeopleController < ApplicationController
  def index
    bio_posts = Story.where("tags LIKE '%bio%'")

    @stories_pinned = bio_posts.where(pinned: true)
    @stories_unpinned = bio_posts.where(pinned: false)

    @stories = @stories_pinned + @stories_unpinned

    render 'stories/index'
  end
end
