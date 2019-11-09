class ShotsController < ApplicationController
   def index
      @shots = Shot.all.order("created_at DESC").page(params[:page]).per(5)
      @shotss = Shot.all.order("created_at DESC")
      @user = current_user
      @day = (Date.today - current_user.birthday).to_i
   end
   
   def new
      @shot = Shot.new
   end
   
   def create
     Shot.create(create_params)
   end
   
   private
   
   def create_params
     params.require(:shot).permit(:date, :text, :title, :image)
   end
end
