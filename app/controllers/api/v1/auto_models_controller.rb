module Api
	module V1
    class AutoModelsController < ApplicationController
      before_action :set_auto_model, only: [:show, :update, :destroy]

      # GET /auto_models
      def index
        @auto_models = AutoModel.all

        render json: @auto_models
      end

      # GET /auto_models/1
      def show
        render json: @auto_model
      end

      # POST /auto_models
      def create
        @auto_model = AutoModel.new(auto_model_params)
        @auto_model.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_model.save
          render json: @auto_model, status: :created
        else
          render json: @auto_model.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /auto_models/1
      def update
        if @auto_model.update(auto_model_params)
          render json: @auto_model
        else
          render json: @auto_model.errors, status: :unprocessable_entity
        end
      end

      # DELETE /auto_models/1
      def destroy
        @auto_model.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_model
          @auto_model = AutoModel.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_model_params
          params.require(:auto_model).permit(:id, :name, :rental_company_id)
        end
    end
  end
end
