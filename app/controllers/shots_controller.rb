class ShotsController < ApplicationController
   def index
      @shots = Shot.all.order("created_at DESC").page(params[:page]).per(5)
      @shotss = Shot.all.order("created_at DESC")
      @user = current_user
      @day = (Date.today - current_user.birthday).to_i
      @products = Product.all
   end
   
   def new
      @shot = Shot.new
   end
   
   def create
     Shot.create(create_params)
   end
   
   def edit
      @shot = Shot.find(params[:id])
   end
   
   def update
      @shot = Shot.find(params[:id])
      @shot.update(create_params)
      redirect_to "/shots/#{params[:id]}"
   end
   
   def show
    @shot = Shot.find(params[:id])
   end

   def destroy
      shot = Shot.find(params[:id])
      shot.destroy
      redirect_to controller: :shots, action: :index
   end
   
   private
   
   def create_params
     params.require(:shot).permit(:date, :text, :title, :image)
   end
end
