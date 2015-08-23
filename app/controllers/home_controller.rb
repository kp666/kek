class HomeController < ApplicationController
  def index
    @events = Event.all
    @stories = Story.all
  end
end
