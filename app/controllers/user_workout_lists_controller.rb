class UserWorkoutListsController < ApplicationController
  
  def index
    if current_user.admin
      @user = User.find_by_id(params[:user_id])
      @lists = @user.user_workout_lists
    else
      @lists = current_user.user_workout_lists
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
