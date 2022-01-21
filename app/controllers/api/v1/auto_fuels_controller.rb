module Api
	module V1
    class AutoFuelsController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_fuel, only: [:show, :update, :destroy]

      # GET /auto_fuels
      def index
        @auto_fuels = AutoFuel.all

        render json: @auto_fuels
      end

      # GET /auto_fuels/1
      def show
        render json: @auto_fuel
      end

      # POST /auto_fuels
      def create
        @auto_fuel = AutoFuel.new(auto_fuel_params)
        @auto_fuel.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_fuel.save
          render json: @auto_fuel, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_fuel.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_fuels/1
      def update
        if @auto_fuel.update(auto_fuel_params)
          render json: @auto_fuel
        else
          render json: ErrorSerializer.serialize(@auto_fuel.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_fuels/1
      def destroy
        @auto_fuel.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_fuel
          @auto_fuel = AutoFuel.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_fuel_params
          params.require(:auto_fuel).permit(:id, :fuel, :rental_company_id)
        end
    end
  end
end