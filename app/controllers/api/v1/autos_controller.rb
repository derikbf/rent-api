module Api
	module V1
    class AutosController < ApplicationController
      include ErrorSerializer
      before_action :set_auto, only: [:show, :update, :destroy]

      # GET /autos
      def index
        @autos = Auto.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @autos
      end

      # GET /autos/1
      def show
        render json: @auto
      end

      # POST /autos
      def create
        @auto = Auto.new(auto_params)
        @auto.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto.save
          render json: @auto, status: :created
        else
          render json: ErrorSerializer.serialize(@auto.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /autos/1
      def update
        if @auto.update(auto_params)
          render json: @auto
        else
          render json: ErrorSerializer.serialize(@auto.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /autos/1
      def destroy
        @auto.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto
          @auto = Auto.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_params
          params.require(:auto).permit(
            :id, :name, :description, :unit_price, 
            :rental_company_id, :category_id, :auto_brand_id, :auto_type_id,
            :auto_year_id, :auto_mileage_id, :auto_power_id, :auto_fuel_id,
            :auto_exchange_id, :auto_direction_id, :auto_color_id, :auto_door_id,
            :auto_plate_id, :auto_model_id, :auto_optional_id          
          )
        end
    end
  end
end