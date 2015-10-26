class HomeController < ApplicationController
  def index
    @events = Event.where(['`to` > ?', DateTime.now])
    @stories = Story.all
  end
end
