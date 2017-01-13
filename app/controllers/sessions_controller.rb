class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      flash[:notice] = 'Welcome to Nacho Town!!'
      redirect_to user_user_workout_lists_path(@user)
    else
      flash[:error] = "No Nachos for you!!"
      render 'sessions/new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "BYE BYE!!"
    redirect_to root_path
  end

end
