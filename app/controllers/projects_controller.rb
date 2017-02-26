class ProjectsController < ApplicationController
  def index
    @stories = Story.tagged_with("project").reorder('pinned desc','created_at desc')
    render 'stories/index'
  end
end
