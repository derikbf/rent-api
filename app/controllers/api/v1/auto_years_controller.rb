module Api
	module V1
    class AutoYearsController < ApplicationController
      before_action :set_auto_year, only: [:show, :update, :destroy]

      # GET /auto_years
      def index
        @auto_years = AutoYear.all

        render json: @auto_years
      end

      # GET /auto_years/1
      def show
        render json: @auto_year
      end

      # POST /auto_years
      def create
        @auto_year = AutoYear.new(auto_year_params)
        @auto_year.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_year.save
          render json: @auto_year, status: :created
        else
          render json: @auto_year.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /auto_years/1
      def update
        if @auto_year.update(auto_year_params)
          render json: @auto_year
        else
          render json: @auto_year.errors, status: :unprocessable_entity
        end
      end

      # DELETE /auto_years/1
      def destroy
        @auto_year.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_year
          @auto_year = AutoYear.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_year_params
          params.require(:auto_year).permit(:id, :year, :rental_company_id)
        end
    end
  end
end