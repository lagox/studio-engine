#encoding:utf-8
class ProjectsController < ApplicationController
  def index
    begin
      @title = "Проекты"
      @projects = Ourproject.paginate :page => params[:page]
    rescue WillPaginate::InvalidPage
      flash[:notice] = 'Ошибка'
      redirect_to projects_path
    end
  end

  def show
  end

end
