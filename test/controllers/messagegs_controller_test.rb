require "test_helper"

class MessagegsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messageg = messagegs(:one)
  end

  test "should get index" do
    get messagegs_url
    assert_response :success
  end

  test "should get new" do
    get new_messageg_url
    assert_response :success
  end

  test "should create messageg" do
    assert_difference("Messageg.count") do
      post messagegs_url, params: { messageg: { body: @messageg.body } }
    end

    assert_redirected_to messageg_url(Messageg.last)
  end

  test "should show messageg" do
    get messageg_url(@messageg)
    assert_response :success
  end

  test "should get edit" do
    get edit_messageg_url(@messageg)
    assert_response :success
  end

  test "should update messageg" do
    patch messageg_url(@messageg), params: { messageg: { body: @messageg.body } }
    assert_redirected_to messageg_url(@messageg)
  end

  test "should destroy messageg" do
    assert_difference("Messageg.count", -1) do
      delete messageg_url(@messageg)
    end

    assert_redirected_to messagegs_url
  end
end
