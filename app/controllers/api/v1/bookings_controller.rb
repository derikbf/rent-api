module Api
	module V1
    class BookingsController < ApplicationController
      include ErrorSerializer
      before_action :set_booking, only: [:show, :update, :destroy]

      # GET /bookings
      def index
        @bookings = Booking.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @bookings
      end

      # GET /bookings/1
      def show
        render json: @booking
      end

      # POST /bookings
      def create
        @booking = Booking.new(booking_params)
        @booking.auto = Auto.find(params[:auto_id])

        if @booking.save
          render json: @booking, status: :created
        else
          render json: ErrorSerializer.serialize(@booking.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /bookings/1
      def update
        if @booking.update(booking_params)
          render json: @booking
        else
          render json: ErrorSerializer.serialize(@booking.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /bookings/1
      def destroy
        @booking.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_booking
          @booking = Booking.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def booking_params
          params.require(:booking).permit(:id, :start_date, :end_date, :total, :auto_id, :customer_id, :user_id)
        end
    end
  end
end