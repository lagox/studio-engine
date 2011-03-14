#encoding:utf-8
class OurprojectsController < ApplicationController
  # GET /ourprojects
  # GET /ourprojects.xml
  def index
    @ourprojects = Ourproject.paginate :page => params[:page]
    @title = "Наши проекты"
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ourprojects }
    end
  end

  # GET /ourprojects/1
  # GET /ourprojects/1.xml
  def show
    begin
      @ourproject = Ourproject.find(params[:id])
      @title = @ourproject.title
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @ourproject }
      end
    rescue ActiveRecord::RecordNotFound
      flash[:notice] = "Такой записи не существует"
      redirect_to ourprojects_path
    end
  end

  # GET /ourprojects/new
  # GET /ourprojects/new.xml
  def new
    @ourproject = Ourproject.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ourproject }
    end
  end

  # GET /ourprojects/1/edit
  def edit
    @ourproject = Ourproject.find(params[:id])
  end

  # POST /ourprojects
  # POST /ourprojects.xml
  def create
    @ourproject = Ourproject.new(params[:ourproject])
    
    respond_to do |format|
      if @ourproject.save
        format.html { redirect_to(@ourproject, :notice => 'Успешно добавлено') }
        format.xml  { render :xml => @ourproject, :status => :created, :location => @ourproject }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ourproject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ourprojects/1
  # PUT /ourprojects/1.xml
  def update
    @ourproject = Ourproject.find(params[:id])

    respond_to do |format|
      if @ourproject.update_attributes(params[:ourproject])
        format.html { redirect_to(@ourproject, :notice => 'Успешно обновлено.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ourproject.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ourprojects/1
  # DELETE /ourprojects/1.xml
  def destroy
    @ourproject = Ourproject.find(params[:id])
    @ourproject.destroy

    respond_to do |format|
      format.html { redirect_to(ourprojects_url) }
      format.xml  { head :ok }
    end
  end
end
