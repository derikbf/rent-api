module Api
	module V1
    class AutoPlatesController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_plate, only: [:show, :update, :destroy]

      # GET /auto_plates
      def index
        @auto_plates = AutoPlate.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @auto_plates
      end

      # GET /auto_plates/1
      def show
        render json: @auto_plate
      end

      # POST /auto_plates
      def create
        @auto_plate = AutoPlate.new(auto_plate_params)
        @auto_plate.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_plate.save
          render json: @auto_plate, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_plate.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_plates/1
      def update
        if @auto_plate.update(auto_plate_params)
          render json: @auto_plate
        else
          render json: ErrorSerializer.serialize(@auto_plate.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_plates/1
      def destroy
        @auto_plate.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_plate
          @auto_plate = AutoPlate.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_plate_params
          params.require(:auto_plate).permit(:id, :name, :rental_company_id)
        end
    end
  end
end