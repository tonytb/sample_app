class ReportsController < ApplicationController
  # GET /reports
  # GET /reports.xml
  
  layout :cp_layout
  
  def index
    @reports = Report.all
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reports }
    end
  end

  # GET /reports/1
  # GET /reports/1.xml
  def show
    @report = Report.find(params[:id])
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report }
    end
  end

  # GET /reports/new
  # GET /reports/new.xml
  def new
    @report = Report.new
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report }
    end
  end

  # GET /reports/1/edit
  def edit
    @report = Report.find(params[:id])
    @user = current_user
    @title = @user.name
  end

  # POST /reports
  # POST /reports.xml
  def create
    @report = Report.new(params[:report])
    @user = current_user
    @title = @user.name

    respond_to do |format|
      if @report.save
        format.html { redirect_to(@report, :notice => 'Report was successfully created.') }
        format.xml  { render :xml => @report, :status => :created, :location => @report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reports/1
  # PUT /reports/1.xml
  def update
    @report = Report.find(params[:id])
    @user = current_user
    @title = @user.name

    respond_to do |format|
      if @report.update_attributes(params[:report])
        format.html { redirect_to(@report, :notice => 'Report was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.xml
  def destroy
    @report = Report.find(params[:id])
    @report.destroy
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html { redirect_to(reports_url) }
      format.xml  { head :ok }
    end
  end
  
  private

    def cp_layout
      if signed_in?
        "cp"
      else
        "application"
      end
    end
  
end
