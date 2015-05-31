class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]

  respond_to :html

  def index
    @activities = Activity.all
    respond_with(@activities)
  end

  def show
    respond_with(@activity)
  end

  def new
    @activity = current_user.activities.new
    respond_with(@activity)
  end

  def edit
  end

  def create
    @activity = current_user.activities.new(activity_params)
    @activity.save
    respond_with(@activity)
  end

  def update
    @activity.update(activity_params)
    respond_with(@activity)
  end

  def destroy
    @activity.destroy
    respond_with(@activity)
  end

  private
    def set_activity
      @activity = Activity.where(permalink: params[:id]).first!
    end

    def activity_params
      params.require(:activity).permit(:title, :description)
    end

    def check_user
      if @activity.user != current_user
        render text: 'You are a nasty cracker!'
      end
    end
end
