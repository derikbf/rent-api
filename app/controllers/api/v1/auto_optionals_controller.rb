module Api
	module V1
    class AutoOptionalsController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_optional, only: [:show, :update, :destroy]

      # GET /auto_optionals
      def index
        @auto_optionals = AutoOptional.all

        render json: @auto_optionals
      end

      # GET /auto_optionals/1
      def show
        render json: @auto_optional
      end

      # POST /auto_optionals
      def create
        @auto_optional = AutoOptional.new(auto_optional_params)
        @auto_optional.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_optional.save
          render json: @auto_optional, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_optional.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_optionals/1
      def update
        if @auto_optional.update(auto_optional_params)
          render json: @auto_optional
        else
          render json: ErrorSerializer.serialize(@auto_optional.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_optionals/1
      def destroy
        @auto_optional.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_optional
          @auto_optional = AutoOptional.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_optional_params
          params.require(:auto_optional).permit(:id, :eletric_glass, :air_bag, :eletrick_lock, :air_conditioner, :alarm, :sound, :on_board_computer, :abs_brakes, :reverse_sensor, :reverse_camera, :rental_company_id)
        end
    end
  end
end