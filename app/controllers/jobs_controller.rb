#encoding:utf-8
class JobsController < ApplicationController
  def index
    @jobs = Ourportfolio.paginate :page => params[:page]
    @title = "Портфолио"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @jobs }
    end    
  end
  
  def show
    begin
      @job = Ourportfolio.find(params[:id])
      @title = @job.title
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @job }
      end      
    rescue ActiveRecord::RecordNotFound
      flash[:notice] = "Нет такой работы"
      redirect_to jobs_path
    end
  end
  
end
