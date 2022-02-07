module Api
	module V1
    class CategoriesController < ApplicationController
      include ErrorSerializer
      before_action :set_category, only: [:show, :update, :destroy]

      # GET /categories
      def index
        @categories = Category.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @categories, status: 200
      end

      # GET /categories/1
      def show
        render json: @category 
      end

      # POST /categories
      def create
        @category = Category.new(category_params)
        @category.rental_company = RentalCompany.find(params[:rental_company_id])

        if @category.save
          render json: @category, status: :created
        else
          render json: ErrorSerializer.serialize(@category.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /categories/1
      def update
        if @category.update(category_params)
          render json: @category
        else
          render json: ErrorSerializer.serialize(@category.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /categories/1
      def destroy
        @category.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_category
          @category = Category.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def category_params
          params.require(:category).permit(:id, :name, :description, :rental_company_id)
        end
    end
  end
end