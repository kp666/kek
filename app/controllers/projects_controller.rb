class ProjectsController < ApplicationController
  def index
    @stories = Story.tagged_with("project").reorder('pinned desc','created_at desc').all
    render 'stories/index'
  end
end
