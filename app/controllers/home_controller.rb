class HomeController < ApplicationController
  def index
    @events = Event.all
    @activities = Activity.all
  end
end
