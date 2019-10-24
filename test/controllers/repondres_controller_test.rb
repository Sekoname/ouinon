require 'test_helper'

class RepondresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repondre = repondres(:one)
  end

  test "should get index" do
    get repondres_url
    assert_response :success
  end

  test "should get new" do
    get new_repondre_url
    assert_response :success
  end

  test "should create repondre" do
    assert_difference('Repondre.count') do
      post repondres_url, params: { repondre: { question_id: @repondre.question_id, user_id: @repondre.user_id } }
    end

    assert_redirected_to repondre_url(Repondre.last)
  end

  test "should show repondre" do
    get repondre_url(@repondre)
    assert_response :success
  end

  test "should get edit" do
    get edit_repondre_url(@repondre)
    assert_response :success
  end

  test "should update repondre" do
    patch repondre_url(@repondre), params: { repondre: { question_id: @repondre.question_id, user_id: @repondre.user_id } }
    assert_redirected_to repondre_url(@repondre)
  end

  test "should destroy repondre" do
    assert_difference('Repondre.count', -1) do
      delete repondre_url(@repondre)
    end

    assert_redirected_to repondres_url
  end
end
