class PeopleController < ApplicationController
  def index
    @stories = Story.where("tags LIKE '%bio%'")
    render 'stories/index'
  end
end
