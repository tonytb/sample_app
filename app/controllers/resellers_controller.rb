class ResellersController < ApplicationController
  # GET /resellers
  # GET /resellers.xml
  
  layout :cp_layout
  
  include ResellersHelper
  
  def index
    @resellers = Reseller.all
    @user = current_user
    @title = @user.name
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resellers }
    end
  end

  # GET /resellers/1
  # GET /resellers/1.xml
  def show
    @reseller = Reseller.find(params[:id])
    @user = current_user
    @title = @user.name
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reseller }
    end
  end

  # GET /resellers/new
  # GET /resellers/new.xml
  def new
    @reseller = Reseller.new
    @user = current_user
    @title = @user.name
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reseller }
    end
  end

  # GET /resellers/1/edit
  def edit
    @reseller = Reseller.find(params[:id])
    @user = current_user
    @title = @user.name
  end

  # POST /resellers
  # POST /resellers.xml
  def create
    @reseller = Reseller.new(params[:reseller])
    @user = current_user
    @title = @user.name

    respond_to do |format|
      if @reseller.save
        UserMailer.reseller_added(@reseller).deliver
        format.html { redirect_to(@reseller, :notice => 'Reseller was successfully created.') }
        format.xml  { render :xml => @reseller, :status => :created, :location => @reseller }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reseller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resellers/1
  # PUT /resellers/1.xml
  def update
    @reseller = Reseller.find(params[:id])
    @user = current_user
    @title = @user.name
    
    respond_to do |format|
      if @reseller.update_attributes(params[:reseller])
        format.html { redirect_to(@reseller, :notice => 'Reseller was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reseller.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resellers/1
  # DELETE /resellers/1.xml
  def destroy
    @reseller = Reseller.find(params[:id])
    @reseller.destroy
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html { redirect_to(resellers_url) }
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
