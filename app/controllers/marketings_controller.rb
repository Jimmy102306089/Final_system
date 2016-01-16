class MarketingsController < ApplicationController
	
	def index
	    @marketings=Marketing.all
		
		if params[:number].present?
		@marketings=@marketings.where("number like?","#{params[:number]}")
	    end

	end

    
    
    def edit
    	@marketing=Marketing.find(params[:id])
    end


    def show
	   @marketing=Marketing.find(params[:id])
	end

	def new
      @marketing=Marketing.new
	end


	def create
		@marketing = Marketing.new(marketing_params)
		if @marketing.save
			redirect_to marketings_path 
		else
			render :new
		end
	end



    def update
        @marketing=Marketing.find(params[:id])
        if @marketing.update(marketing_params)
        	redirect_to marketings_path
        else
        	render :edit
        end
    end

	private

    def destroy
    	@marketing=Marketing.find(params[:id])
    	@marketing.destroy
    	redirect_to root_path
    end
	def marketing_params
		params.require(:marketing).permit(:number,:name,:time,:sales,:suggestion,:avr_number)
    end
end
