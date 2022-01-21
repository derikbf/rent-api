module Api
	module V1
    class UserConsumersController < ApplicationController
      include ErrorSerializer
      before_action :set_user_consumer, only: [:show, :update, :destroy]

      # GET /user_consumers
      def index
        @user_consumers = UserConsumer.order("created_at DESC").page(params[:page].try(:[], :number))

        render json: @user_consumers
      end

      # GET /user_consumers/1
      def show
        render json: @user_consumer
      end

      # POST /user_consumers
      def create
        @user_consumer = UserConsumer.new(user_consumer_params)
        @user_consumer.rental_company = RentalCompany.find(params[:rental_company_id])

        if @user_consumer.save
          render json: @user_consumer, status: :created
        else
          render json: ErrorSerializer.serialize(@user_consumer.errors), status: :unprocessable_entity 
        end
      end

      # PATCH/PUT /user_consumers/1
      def update
        if @user_consumer.update(user_consumer_params)
          render json: @user_consumer
        else
          render json: ErrorSerializer.serialize(@user_consumer.errors), status: :unprocessable_entity 
        end
      end

      # DELETE /user_consumers/1
      def destroy
        @user_consumer.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user_consumer
          @user_consumer = UserConsumer.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def user_consumer_params
          params.require(:user_consumer).permit(:id, :avatar, :name, :username, :email, :password_digest, :cpf, :phone, :rental_company_id)
        end
    end
  end
end