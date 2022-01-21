module Api
	module V1
    class AutoBrandsController < ApplicationController
      include ErrorSerializer
      before_action :set_auto_brand, only: [:show, :update, :destroy]

      # GET /auto_brands
      def index
        @auto_brands = AutoBrand.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @auto_brands
      end

      # GET /auto_brands/1
      def show
        render json: @auto_brand
      end

      # POST /auto_brands
      def create
        @auto_brand = AutoBrand.new(auto_brand_params)
        @auto_brand.rental_company = RentalCompany.find(params[:rental_company_id])

        if @auto_brand.save
          render json: @auto_brand, status: :created
        else
          render json: ErrorSerializer.serialize(@auto_brand.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /auto_brands/1
      def update
        if @auto_brand.update(auto_brand_params)
          render json: @auto_brand
        else
          render json: ErrorSerializer.serialize(@auto_brand.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /auto_brands/1
      def destroy
        @auto_brand.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_auto_brand
          @auto_brand = AutoBrand.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def auto_brand_params
          params.require(:auto_brand).permit(:id, :name, :rental_company_id)
        end
    end
  end
end