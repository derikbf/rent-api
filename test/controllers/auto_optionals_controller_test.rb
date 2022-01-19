require "test_helper"

class AutoOptionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_optional = auto_optionals(:one)
  end

  test "should get index" do
    get auto_optionals_url, as: :json
    assert_response :success
  end

  test "should create auto_optional" do
    assert_difference('AutoOptional.count') do
      post auto_optionals_url, params: { auto_optional: { abs_brakes: @auto_optional.abs_brakes, air_bag: @auto_optional.air_bag, air_conditioner: @auto_optional.air_conditioner, alarm: @auto_optional.alarm, eletric_glass: @auto_optional.eletric_glass, eletrick_lock: @auto_optional.eletrick_lock, on_board_computer: @auto_optional.on_board_computer, rental_company_id: @auto_optional.rental_company_id, reverse_camera: @auto_optional.reverse_camera, reverse_sensor: @auto_optional.reverse_sensor, sound: @auto_optional.sound } }, as: :json
    end

    assert_response 201
  end

  test "should show auto_optional" do
    get auto_optional_url(@auto_optional), as: :json
    assert_response :success
  end

  test "should update auto_optional" do
    patch auto_optional_url(@auto_optional), params: { auto_optional: { abs_brakes: @auto_optional.abs_brakes, air_bag: @auto_optional.air_bag, air_conditioner: @auto_optional.air_conditioner, alarm: @auto_optional.alarm, eletric_glass: @auto_optional.eletric_glass, eletrick_lock: @auto_optional.eletrick_lock, on_board_computer: @auto_optional.on_board_computer, rental_company_id: @auto_optional.rental_company_id, reverse_camera: @auto_optional.reverse_camera, reverse_sensor: @auto_optional.reverse_sensor, sound: @auto_optional.sound } }, as: :json
    assert_response 200
  end

  test "should destroy auto_optional" do
    assert_difference('AutoOptional.count', -1) do
      delete auto_optional_url(@auto_optional), as: :json
    end

    assert_response 204
  end
end
