# require "test_helper"

# class UserConsumersControllerTest < ActionDispatch::IntegrationTest
#   setup do
#     @user_consumer = user_consumers(:one)
#   end

#   test "should get index" do
#     get user_consumers_url, as: :json
#     assert_response :success
#   end

#   test "should create user_consumer" do
#     assert_difference('UserConsumer.count') do
#       post user_consumers_url, params: { user_consumer: {  } }, as: :json
#     end

#     assert_response 201
#   end

#   test "should show user_consumer" do
#     get user_consumer_url(@user_consumer), as: :json
#     assert_response :success
#   end

#   test "should update user_consumer" do
#     patch user_consumer_url(@user_consumer), params: { user_consumer: {  } }, as: :json
#     assert_response 200
#   end

#   test "should destroy user_consumer" do
#     assert_difference('UserConsumer.count', -1) do
#       delete user_consumer_url(@user_consumer), as: :json
#     end

#     assert_response 204
#   end
# end
