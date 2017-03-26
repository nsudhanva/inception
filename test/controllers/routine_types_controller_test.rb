require 'test_helper'

class RoutineTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @routine_type = routine_types(:one)
  end

  test "should get index" do
    get routine_types_url
    assert_response :success
  end

  test "should get new" do
    get new_routine_type_url
    assert_response :success
  end

  test "should create routine_type" do
    assert_difference('RoutineType.count') do
      post routine_types_url, params: { routine_type: { title: @routine_type.title } }
    end

    assert_redirected_to routine_type_url(RoutineType.last)
  end

  test "should show routine_type" do
    get routine_type_url(@routine_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_routine_type_url(@routine_type)
    assert_response :success
  end

  test "should update routine_type" do
    patch routine_type_url(@routine_type), params: { routine_type: { title: @routine_type.title } }
    assert_redirected_to routine_type_url(@routine_type)
  end

  test "should destroy routine_type" do
    assert_difference('RoutineType.count', -1) do
      delete routine_type_url(@routine_type)
    end

    assert_redirected_to routine_types_url
  end
end
