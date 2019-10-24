require 'test_helper'

class ReponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reponse = reponses(:one)
  end

  test "should get index" do
    get reponses_url
    assert_response :success
  end

  test "should get new" do
    get new_reponse_url
    assert_response :success
  end

  test "should create reponse" do
    assert_difference('Reponse.count') do
      post reponses_url, params: { reponse: { lib_reponse: @reponse.lib_reponse } }
    end

    assert_redirected_to reponse_url(Reponse.last)
  end

  test "should show reponse" do
    get reponse_url(@reponse)
    assert_response :success
  end

  test "should get edit" do
    get edit_reponse_url(@reponse)
    assert_response :success
  end

  test "should update reponse" do
    patch reponse_url(@reponse), params: { reponse: { lib_reponse: @reponse.lib_reponse } }
    assert_redirected_to reponse_url(@reponse)
  end

  test "should destroy reponse" do
    assert_difference('Reponse.count', -1) do
      delete reponse_url(@reponse)
    end

    assert_redirected_to reponses_url
  end
end
