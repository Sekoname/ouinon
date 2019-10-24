require 'test_helper'

class AvoirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avoir = avoirs(:one)
  end

  test "should get index" do
    get avoirs_url
    assert_response :success
  end

  test "should get new" do
    get new_avoir_url
    assert_response :success
  end

  test "should create avoir" do
    assert_difference('Avoir.count') do
      post avoirs_url, params: { avoir: { question_id: @avoir.question_id, reponse_id: @avoir.reponse_id } }
    end

    assert_redirected_to avoir_url(Avoir.last)
  end

  test "should show avoir" do
    get avoir_url(@avoir)
    assert_response :success
  end

  test "should get edit" do
    get edit_avoir_url(@avoir)
    assert_response :success
  end

  test "should update avoir" do
    patch avoir_url(@avoir), params: { avoir: { question_id: @avoir.question_id, reponse_id: @avoir.reponse_id } }
    assert_redirected_to avoir_url(@avoir)
  end

  test "should destroy avoir" do
    assert_difference('Avoir.count', -1) do
      delete avoir_url(@avoir)
    end

    assert_redirected_to avoirs_url
  end
end
