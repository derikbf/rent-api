module Api
	module V1
    class UserOperatorsController < ApplicationController
      before_action :set_user_operator, only: [:show, :update, :destroy]

      # GET /user_operators
      def index
        @user_operators = UserOperator.all

        render json: @user_operators
      end

      # GET /user_operators/1
      def show
        render json: @user_operator
      end

      # POST /user_operators
      def create
        @user_operator = UserOperator.new(user_operator_params)

        if @user_operator.save
          render json: @user_operator, status: :created
        else
          render json: @user_operator.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /user_operators/1
      def update
        if @user_operator.update(user_operator_params)
          render json: @user_operator
        else
          render json: @user_operator.errors, status: :unprocessable_entity
        end
      end

      # DELETE /user_operators/1
      def destroy
        @user_operator.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_user_operator
          @user_operator = UserOperator.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def user_operator_params
          params.require(:user_operator).permit(:id, :avatar, :name, :username, :email, :password_digest, :cpf, :phone)
        end
    end
  end
end