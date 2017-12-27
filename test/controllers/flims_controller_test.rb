require 'test_helper'

class FlimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flim = flims(:one)
  end

  test "should get index" do
    get flims_url
    assert_response :success
  end

  test "should get new" do
    get new_flim_url
    assert_response :success
  end

  test "should create flim" do
    assert_difference('Flim.count') do
      post flims_url, params: { flim: { description: @flim.description, director: @flim.director, movie_length: @flim.movie_length, rating: @flim.rating, title: @flim.title } }
    end

    assert_redirected_to flim_url(Flim.last)
  end

  test "should show flim" do
    get flim_url(@flim)
    assert_response :success
  end

  test "should get edit" do
    get edit_flim_url(@flim)
    assert_response :success
  end

  test "should update flim" do
    patch flim_url(@flim), params: { flim: { description: @flim.description, director: @flim.director, movie_length: @flim.movie_length, rating: @flim.rating, title: @flim.title } }
    assert_redirected_to flim_url(@flim)
  end

  test "should destroy flim" do
    assert_difference('Flim.count', -1) do
      delete flim_url(@flim)
    end

    assert_redirected_to flims_url
  end
end
