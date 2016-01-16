class InventoriesController < ApplicationController
	
    def index
		@inventories=Inventory.all
		if params[:number].present?
		@inventories=@inventories.where("number like?","#{params[:number]}")
	    end
	    if params[:location].present?
		@inventories=@inventories.where("location like?","#{params[:location]}")
	    end
     end


    def edit
    	@inventory=Inventory.find(params[:id])
    end

    def show
	   @inventory=Inventory.find(params[:id])
	end

	def new
      @inventory=Inventory.new
	end


	def create
		@inventory = Inventory.new(inventory_params)
		if @inventory.save
			redirect_to root_path 
		else
			render :new
		end
	end



    def update
        @inventory=Inventory.find(params[:id])
        if @inventory.update(inventory_params)
        	redirect_to inventories_path
        else
        	render :edit
        end
    end

	private

    def destroy
    	@inventory=Inventory.find(params[:id])
    	@inventory.destroy
    	redirect_to root_path
    end
	def inventory_params
		params.require(:inventory).permit(:number,:location,:name,:sales,:stock)
    end
end
