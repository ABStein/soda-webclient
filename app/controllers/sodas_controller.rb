class SodasController < ApplicationController
  def index
    @sodas = Unirest.get("localhost:3000/api/v2/sodas.json").body  
  end

  def new
    
  end


  def create 
    @soda = Unirest.post   
 end

 def create
   @soda = Unirest.post(
                       "localhost:3000/api/v2/sodas.json",
                       headers:{"Accept" => "application/json"},
                       parameters:{
                                   :soda_name => params[:soda_name],
                                   :distributor => params[:distributor],
                                   :color => params[:color],
                                   :calories => params[:calories]
                                   }
                       ).body

   redirect_to "/sodas/#{ @soda['id'] }"

  end

  def show
    @soda = Unirest.get("localhost:3000/api/v2/sodas/#{params[:id]}.json").body
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end
