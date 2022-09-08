require "test_helper"

class ChlidrensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chlidren = chlidrens(:one)
  end

  test "should get index" do
    get chlidrens_url
    assert_response :success
  end

  test "should get new" do
    get new_chlidren_url
    assert_response :success
  end

  test "should create chlidren" do
    assert_difference('Chlidren.count') do
      post chlidrens_url, params: { chlidren: { child_class: @chlidren.child_class, child_roll_no: @chlidren.child_roll_no, name: @chlidren.name } }
    end

    assert_redirected_to chlidren_url(Chlidren.last)
  end

  test "should show chlidren" do
    get chlidren_url(@chlidren)
    assert_response :success
  end

  test "should get edit" do
    get edit_chlidren_url(@chlidren)
    assert_response :success
  end

  test "should update chlidren" do
    patch chlidren_url(@chlidren), params: { chlidren: { child_class: @chlidren.child_class, child_roll_no: @chlidren.child_roll_no, name: @chlidren.name } }
    assert_redirected_to chlidren_url(@chlidren)
  end

  test "should destroy chlidren" do
    assert_difference('Chlidren.count', -1) do
      delete chlidren_url(@chlidren)
    end

    assert_redirected_to chlidrens_url
  end
end
