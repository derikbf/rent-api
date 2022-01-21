module Api
	module V1
    class AutoDirectionsController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_direction, only: [:show, :update, :destroy]

      # GET /auto_directions
      def index
        @auto_directions = AutoDirection.all

        render json: @auto_directions
      end

      # GET /auto_directions/1
      def show
        render json: @auto_direction
      end

      # POST /auto_directions
      def create
        @auto_direction = AutoDirection.new(auto_direction_params)
        @auto_direction.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_direction.save
          render json: @auto_direction, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_direction.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_directions/1
      def update
        if @auto_direction.update(auto_direction_params)
          render json: @auto_direction
        else
          render json: ErrorSerializer.serialize(@auto_direction.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_directions/1
      def destroy
        @auto_direction.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_direction
          @auto_direction = AutoDirection.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_direction_params
          params.require(:auto_direction).permit(:id, :direction, :rental_company_id)
        end
    end
  end
end