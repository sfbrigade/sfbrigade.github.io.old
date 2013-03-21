require 'test_helper'

class BrigadesControllerTest < ActionController::TestCase
  setup do
    @brigade = brigades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brigades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brigade" do
    assert_difference('Brigade.count') do
      post :create, brigade: { name: @brigade.name, slug: @brigade.slug }
    end

    assert_redirected_to brigade_path(assigns(:brigade))
  end

  test "should show brigade" do
    get :show, id: @brigade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brigade
    assert_response :success
  end

  test "should update brigade" do
    put :update, id: @brigade, brigade: { name: @brigade.name, slug: @brigade.slug }
    assert_redirected_to brigade_path(assigns(:brigade))
  end

  test "should destroy brigade" do
    assert_difference('Brigade.count', -1) do
      delete :destroy, id: @brigade
    end

    assert_redirected_to brigades_path
  end
end
