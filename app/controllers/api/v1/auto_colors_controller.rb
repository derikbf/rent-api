module Api
	module V1
    class AutoColorsController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_color, only: [:show, :update, :destroy]

      # GET /auto_colors
      def index
        @auto_colors = AutoColor.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @auto_colors
      end

      # GET /auto_colors/1
      def show
        render json: @auto_color
      end

      # POST /auto_colors
      def create
        @auto_color = AutoColor.new(auto_color_params)
        @auto_color.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_color.save
          render json: @auto_color, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_color.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_colors/1
      def update
        if @auto_color.update(auto_color_params)
          render json: @auto_color
        else
          render json: ErrorSerializer.serialize(@auto_color.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_colors/1
      def destroy
        @auto_color.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_color
          @auto_color = AutoColor.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_color_params
          params.require(:auto_color).permit(:id, :name, :rental_company_id)
        end
    end
  end
end