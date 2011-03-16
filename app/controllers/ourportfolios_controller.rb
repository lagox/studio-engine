#encoding:utf-8
class OurportfoliosController < ApplicationController
  # GET /ourportfolios
  # GET /ourportfolios.xml
  def index
    @title = "Наше портфолио"
    @ourportfolios = Ourportfolio.paginate :page => params[:page]
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ourportfolios }
    end
  end

  # GET /ourportfolios/1
  # GET /ourportfolios/1.xml
  def show
    @ourportfolio = Ourportfolio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ourportfolio }
    end
  end

  # GET /ourportfolios/new
  # GET /ourportfolios/new.xml
  def new
    @ourportfolio = Ourportfolio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ourportfolio }
    end
  end

  # GET /ourportfolios/1/edit
  def edit
    @ourportfolio = Ourportfolio.find(params[:id])
  end

  # POST /ourportfolios
  # POST /ourportfolios.xml
  def create
    @ourportfolio = Ourportfolio.new(params[:ourportfolio])

    respond_to do |format|
      if @ourportfolio.save
        format.html { redirect_to(@ourportfolio, :notice => 'Ourportfolio was successfully created.') }
        format.xml  { render :xml => @ourportfolio, :status => :created, :location => @ourportfolio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ourportfolio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ourportfolios/1
  # PUT /ourportfolios/1.xml
  def update
    @ourportfolio = Ourportfolio.find(params[:id])

    respond_to do |format|
      if @ourportfolio.update_attributes(params[:ourportfolio])
        format.html { redirect_to(@ourportfolio, :notice => 'Ourportfolio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ourportfolio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ourportfolios/1
  # DELETE /ourportfolios/1.xml
  def destroy
    @ourportfolio = Ourportfolio.find(params[:id])
    @ourportfolio.destroy

    respond_to do |format|
      format.html { redirect_to(ourportfolios_url) }
      format.xml  { head :ok }
    end
  end
end
