#encoding:utf-8
class SessionsController < ApplicationController
  def new
    @title = "Вход"
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, :alert => "Неправильный логин или пароль"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Вы Вышли!"
  end

end
