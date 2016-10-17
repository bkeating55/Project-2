class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

def show
    @activities = Activity.find(params[:id])
  end

  def new
  end

  def create
    @activities = Activity.new(activity_params)

    if @activities.save
      redirect_to @activities
    else
      render 'new'
    end
  end

  private
    def activity_params
      params.require(:activities).permit(:title, :text)
    end
  end
