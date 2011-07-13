class InvitationsController < ApplicationController
  # GET /invitations
  # GET /invitations.xml
  
  # layout :cp_layout

  # GET /invitations/new
  # GET /invitations/new.xml
  
  layout :cp_layout
  
  def new
    @invitation = Invitation.new
    @user = current_user
    @title = @user.name

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @invitation }
    end
  end

  # POST /invitations
  # POST /invitations.xml
  def create
    @invitation = Invitation.new(params[:invitation])
    @user = current_user
    @title = @user.name
    UserMailer.reseller_added(@invitation).deliver

    respond_to do |format|
      if @invitation.save
        format.html { redirect_to(@invitation, :notice => 'Thank you, your invitation has been sent.') }
        format.xml  { render :xml => @invitation, :status => :created, :location => @invitation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @invitation.errors, :status => :unprocessable_entity }
      end
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
  
  #def cp_layout
   # if signed_in?
    #  "cp"
    #else
     # "application"
    #end
  #end
end
