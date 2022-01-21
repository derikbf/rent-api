module Api
	module V1
    class AutoDoorsController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_door, only: [:show, :update, :destroy]

      # GET /auto_doors
      def index
        @auto_doors = AutoDoor.all

        render json: @auto_doors
      end

      # GET /auto_doors/1
      def show
        render json: @auto_door
      end

      # POST /auto_doors
      def create
        @auto_door = AutoDoor.new(auto_door_params)
        @auto_door.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_door.save
          render json: @auto_door, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_door.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_doors/1
      def update
        if @auto_door.update(auto_door_params)
          render json: @auto_door
        else
          render json: ErrorSerializer.serialize(@auto_door.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_doors/1
      def destroy
        @auto_door.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_door
          @auto_door = AutoDoor.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_door_params
          params.require(:auto_door).permit(:id, :door, :rental_company_id)
        end
    end
  end
end