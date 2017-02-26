class PeopleController < ApplicationController
  def index
    @stories = Story.tagged_with("bio").reorder('pinned desc','created_at desc')
    render 'stories/index'
  end
end
