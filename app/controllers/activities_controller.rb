class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    @user = User.find(params[:user_id])
  end

def show
    @activities = Activity.find(params[:id])
  end

def new
    @activities = Activity.new
    @user = User.find(params[:user_id])
  end

def edit
    @activities = Activity.find(params[:id])


  end

def create
    @user = User.find(params[:user_id])
    @activity = @user.activities.create(activity_params)



    if @activity.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

def update
    @activities = Activity.find(params[:id])

    if @activities.update(activity_params)
      redirect_to @activities
    else
      render 'edit'
    end
  end

def destroy
    @activities = Activity.find(params[:id])
    @activities.destroy

    redirect_to activities_path
  end

  private

    def activity_params
      params.require(:activity).permit(:title, :text, :img_url)

    end
  end
