require 'test_helper'

class DanceclassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danceclass = danceclasses(:one)
  end

  test "should get index" do
    get danceclasses_url
    assert_response :success
  end

  test "should get new" do
    get new_danceclass_url
    assert_response :success
  end

  test "should create danceclass" do
    assert_difference('Danceclass.count') do
      post danceclasses_url, params: { danceclass: { category: @danceclass.category, description: @danceclass.description, image_url: @danceclass.image_url, price: @danceclass.price, title: @danceclass.title } }
    end

    assert_redirected_to danceclass_url(Danceclass.last)
  end

  test "should show danceclass" do
    get danceclass_url(@danceclass)
    assert_response :success
  end

  test "should get edit" do
    get edit_danceclass_url(@danceclass)
    assert_response :success
  end

  test "should update danceclass" do
    patch danceclass_url(@danceclass), params: { danceclass: { category: @danceclass.category, description: @danceclass.description, image_url: @danceclass.image_url, price: @danceclass.price, title: @danceclass.title } }
    assert_redirected_to danceclass_url(@danceclass)
  end

  test "should destroy danceclass" do
    assert_difference('Danceclass.count', -1) do
      delete danceclass_url(@danceclass)
    end

    assert_redirected_to danceclasses_url
  end
end
