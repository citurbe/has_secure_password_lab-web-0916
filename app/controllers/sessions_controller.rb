class SessionsController < ApplicationController


  def new
  end

  def create

  @user = User.find_by(name: params[:user][:name])

  if @user != nil
     @user = @user.authenticate(params[:user][:password])
     return head(:forbidden) if @user == false
     session[:user_id] = @user.id
     redirect_to user_path(@user)
  else
    session[:user_id] = nil
    return head(:forbidden)
  end


  end


end
