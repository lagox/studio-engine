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
    begin
      @project = Ourproject.find(params[:id])
      @title = @project.title
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @project }
      end
    rescue ActiveRecord::RecordNotFound
        flash[:notice] = "Такой записи не существует"
        redirect_to(projects_path)
    end
  end

end
