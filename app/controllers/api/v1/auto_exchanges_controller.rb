module Api
	module V1
    class AutoExchangesController < ApplicationController
      before_action :set_auto_exchange, only: [:show, :update, :destroy]

      # GET /auto_exchanges
      def index
        @auto_exchanges = AutoExchange.all

        render json: @auto_exchanges
      end

      # GET /auto_exchanges/1
      def show
        render json: @auto_exchange
      end

      # POST /auto_exchanges
      def create
        @auto_exchange = AutoExchange.new(auto_exchange_params)
        @auto_exchange.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_exchange.save
          render json: @auto_exchange, status: :created
        else
          render json: @auto_exchange.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /auto_exchanges/1
      def update
        if @auto_exchange.update(auto_exchange_params)
          render json: @auto_exchange
        else
          render json: @auto_exchange.errors, status: :unprocessable_entity
        end
      end

      # DELETE /auto_exchanges/1
      def destroy
        @auto_exchange.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_exchange
          @auto_exchange = AutoExchange.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_exchange_params
          params.require(:auto_exchange).permit(:id, :exchange, :rental_company_id)
        end
    end
  end
end