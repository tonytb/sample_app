class RewardsController < ApplicationController
  # GET /rewards
  # GET /rewards.xml
  
  layout :cp_layout
  
  def claimform
    	@title = "Claim Form"
    	@user = current_user
      @title = @user.name
  end
  
  def treasurehunt
    	@title = "Treasure Hunt"
    	@user = current_user
      @title = @user.name
  end
  
  def index
    @rewards = Reward.all
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rewards }
    end
  end

  # GET /rewards/1
  # GET /rewards/1.xml
  def show
    @reward = Reward.find(params[:id])
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @reward }
    end
  end

  # GET /rewards/new
  # GET /rewards/new.xml
  def new
    @reward = Reward.new
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @reward }
    end
  end

  # GET /rewards/1/edit
  def edit
    @reward = Reward.find(params[:id])
    @user = current_user
    @title = @user.name
  end

  # POST /rewards
  # POST /rewards.xml
  def create
    @reward = Reward.new(params[:reward])
    @user = current_user
    @title = @user.name

    respond_to do |format|
      if @reward.save
        format.html { redirect_to(@reward, :notice => 'Reward was successfully created.') }
        format.xml  { render :xml => @reward, :status => :created, :location => @reward }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @reward.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rewards/1
  # PUT /rewards/1.xml
  def update
    @reward = Reward.find(params[:id])
    @user = current_user
    @title = @user.name

    respond_to do |format|
      if @reward.update_attributes(params[:reward])
        format.html { redirect_to(@reward, :notice => 'Reward was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @reward.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rewards/1
  # DELETE /rewards/1.xml
  def destroy
    @reward = Reward.find(params[:id])
    @reward.destroy
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html { redirect_to(rewards_url) }
      format.xml  { head :ok }
    end
  end
  
  def cp_layout
    if signed_in?
      "cp"
    else
      "application"
    end
  end
  
end
