class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html

  def index
    @stories = Story.all
    respond_with(@stories)
  end

  def show
    respond_with(@story)
  end

  def new
    @story = current_user.stories.new
    respond_with(@story)
  end

  def edit
  end

  def create
    @story = current_user.stories.new(story_params)
    @story.save
    respond_with(@story)
  end

  def update
    @story.update(story_params)
    respond_with(@story)
  end

  def destroy
    @story.destroy
    respond_with(@story)
  end

  private
    def set_story
      @story = Story.where(permalink: params[:id]).first!
    end

    def story_params
      params.require(:story).permit(:title, :description)
    end

    def check_user
      if @story.user != current_user
        render text: 'You are a nasty cracker!'
      end
    end
end
