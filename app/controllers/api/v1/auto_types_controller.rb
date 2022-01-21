module Api
	module V1
    class AutoTypesController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_type, only: [:show, :update, :destroy]

      # GET /auto_types
      def index
        @auto_types = AutoType.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @auto_types
      end

      # GET /auto_types/1
      def show
        render json: @auto_type
      end

      # POST /auto_types
      def create
        @auto_type = AutoType.new(auto_type_params)
        @auto_type.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_type.save
          render json: @auto_type, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_type.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_types/1
      def update
        if @auto_type.update(auto_type_params)
          render json: @auto_type
        else
          render json: ErrorSerializer.serialize(@auto_type.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_types/1
      def destroy
        @auto_type.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_type
          @auto_type = AutoType.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_type_params
          params.require(:auto_type).permit(:id, :name, :rental_company_id)
        end
    end
  end
end