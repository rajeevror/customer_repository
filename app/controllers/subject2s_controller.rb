class Subject2sController < ApplicationController
  # GET /subject2s
  # GET /subject2s.xml
  def index
    @subject2s = Subject2.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subject2s }
    end
  end

  # GET /subject2s/1
  # GET /subject2s/1.xml
  def show
    @subject2 = Subject2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subject2 }
    end
  end

  # GET /subject2s/new
  # GET /subject2s/new.xml
  def new
    @subject2 = Subject2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subject2 }
    end
  end

  # GET /subject2s/1/edit
  def edit
    @subject2 = Subject2.find(params[:id])
  end

  # POST /subject2s
  # POST /subject2s.xml
  def create
    @subject2 = Subject2.new(params[:subject2])

    respond_to do |format|
      if @subject2.save
        format.html { redirect_to(@subject2, :notice => 'Subject2 was successfully created.') }
        format.xml  { render :xml => @subject2, :status => :created, :location => @subject2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subject2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subject2s/1
  # PUT /subject2s/1.xml
  def update
    @subject2 = Subject2.find(params[:id])

    respond_to do |format|
      if @subject2.update_attributes(params[:subject2])
        format.html { redirect_to(@subject2, :notice => 'Subject2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subject2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subject2s/1
  # DELETE /subject2s/1.xml
  def destroy
    @subject2 = Subject2.find(params[:id])
    @subject2.destroy

    respond_to do |format|
      format.html { redirect_to(subject2s_url) }
      format.xml  { head :ok }
    end
  end
end
