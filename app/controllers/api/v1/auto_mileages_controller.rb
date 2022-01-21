module Api
	module V1
    class AutoMileagesController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_mileage, only: [:show, :update, :destroy]

      # GET /auto_mileages
      def index
        @auto_mileages = AutoMileage.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @auto_mileages
      end

      # GET /auto_mileages/1
      def show
        render json: @auto_mileage
      end

      # POST /auto_mileages
      def create
        @auto_mileage = AutoMileage.new(auto_mileage_params)
        @auto_mileage.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_mileage.save
          render json: @auto_mileage, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_mileage.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_mileages/1
      def update
        if @auto_mileage.update(auto_mileage_params)
          render json: @auto_mileage
        else
          render json: ErrorSerializer.serialize(@auto_mileage.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_mileages/1
      def destroy
        @auto_mileage.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_mileage
          @auto_mileage = AutoMileage.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_mileage_params
          params.require(:auto_mileage).permit(:id, :mileage, :rental_company_id)
        end
    end
  end
end