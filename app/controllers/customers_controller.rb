class CustomersController < ApplicationController

	def index
	    @customers=Customer.all
		
		if params[:number].present?
		@customers=@customers.where("number like?","#{params[:number]}")
	    end

	end


    
    def edit
    	@customer=Customer.find(params[:id])
    end


    def show
	   @customer=Customer.find(params[:id])
	end

	def new
      @customer=Customer.new
	end


	def create
		@customer = Customer.new(customer_params)
		if @customer.save
			redirect_to customers_path 
		else
			render :new
		end
	end



    def update
        @customer=Customer.find(params[:id])
        if @customer.update(customer_params)
        	redirect_to customers_path
        else
        	render :edit
        end
    end

	private

    def destroy
    	@customer=Customer.find(params[:id])
    	@customer.destroy
    	redirect_to root_path
    end
	def customer_params
		params.require(:customer).permit(:number,:cusname,:product,:location,:frequency)
    end

end
