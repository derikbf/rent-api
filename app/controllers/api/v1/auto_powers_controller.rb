module Api
	module V1
    class AutoPowersController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_power, only: [:show, :update, :destroy]

      # GET /auto_powers
      def index
        @auto_powers = AutoPower.all

        render json: @auto_powers
      end

      # GET /auto_powers/1
      def show
        render json: @auto_power
      end

      # POST /auto_powers
      def create
        @auto_power = AutoPower.new(auto_power_params)
        @auto_power.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_power.save
          render json: @auto_power, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_power.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_powers/1
      def update
        if @auto_power.update(auto_power_params)
          render json: @auto_power
        else
          render json: ErrorSerializer.serialize(@auto_power.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_powers/1
      def destroy
        @auto_power.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_power
          @auto_power = AutoPower.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_power_params
          params.require(:auto_power).permit(:id, :power, :rental_company_id)
        end
    end
  end
end