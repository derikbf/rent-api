module Api
	module V1
    class RentalCompaniesController < ApplicationController
      include ErrorSerializer
      before_action :set_rental_company, only: [:show, :update, :destroy]

      # GET /rental_companies
      def index
        @rental_companies = RentalCompany.all

        render json: @rental_companies
      end

      # GET /rental_companies/1
      def show
        render json: @rental_company
      end

      # POST /rental_companies
      def create
        @rental_company = RentalCompany.new(rental_company_params)

        if @rental_company.save
          render json: @rental_company, status: :created
        else
          render json: ErrorSerializer.serialize(@rental_company.errors), status: :unprocessable_entity
        end
      end

      # PATCH/PUT /rental_companies/1
      def update
        if @rental_company.update(rental_company_params)
          render json: @rental_company
        else
          render json: ErrorSerializer.serialize(@rental_company.errors), status: :unprocessable_entity
        end
      end

      # DELETE /rental_companies/1
      def destroy
        @rental_company.destroy
      end

      def my_bookings
        my_booking
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_rental_company
          @rental_company = RentalCompany.find(params[:id])
        end

        def my_booking
          @customers = Customer.all
          @bookings = Booking.all

          render json: @customers, include: [:bookings]
        end

        # Only allow a list of trusted parameters through.
        def rental_company_params
          params.require(:rental_company).permit(:id, :avatar, :corporate_name, :fantasy_name, :email, :cnpj, :phone, :cel_phone)
        end
    end
  end
end