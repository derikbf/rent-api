module Api
	module V1
    class CustomersController < ApplicationController
      before_action :set_customer, only: [:show, :update, :destroy]

      # GET /customers
      def index
        @customers = Customer.all

        render json: @customers
      end

      # GET /customers/1
      def show
        render json: @customer, include: [:customer_address]
      end

      # POST /customers
      def create
        @customer = Customer.new(customer_params)

        if @customer.save
          render json: @customer, include: [:customer_address], status: :created
        else
          render json: @customer.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /customers/1
      def update
        if @customer.update(customer_params)
          render json: @customer, include: [:customer_address]
        else
          render json: @customer.errors, status: :unprocessable_entity
        end
      end

      # DELETE /customers/1
      def destroy
        @customer.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_customer
          @customer = Customer.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def customer_params
          params.require(:customer).permit(:id, 
                                           :avatar, 
                                           :corporate_name, 
                                           :fantasy_name, 
                                           :email, 
                                           :cnpj, 
                                           :phone, 
                                           :cel_phone,
              customer_address_attributes: [
                                           :id,
                                           :customer_id,
                                           :country, 
                                           :number, 
                                           :street,
                                           :city,
                                           :complement, 
                                           :district, 
                                           :uf, 
                                           :cep,
                                           :_destroy
                                           ]                                          
                                           )
      end
    end
  end
end