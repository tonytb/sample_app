module ResellersHelper
  def name
     @user = User.find(params[:id])
     @title = @user.name
   end
end
