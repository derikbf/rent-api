module Api
	module V1
    class RatingsController < ApplicationController
      include ErrorSerializer
      before_action :set_rating, only: [:show, :update, :destroy]

      # GET /ratings
      def index
        @ratings = Rating.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @ratings
      end

      # GET /ratings/1
      def show
        render json: @rating
      end

      # POST /ratings
      def create
        @rating = Rating.new(rating_params)
        @rating.booking = Booking.find(params[:booking_id])

        if @rating.save
          render json: @rating, status: :created
        else
          render json: ErrorSerializer.serialize(@rating.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /ratings/1
      def update
        if @rating.update(rating_params)
          render json: @rating
        else
          render json: ErrorSerializer.serialize(@rating.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /ratings/1
      def destroy
        @rating.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_rating
          @rating = Rating.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def rating_params
          params.require(:rating).permit(:id, :star, :description, :booking_id)
        end
    end
  end
end