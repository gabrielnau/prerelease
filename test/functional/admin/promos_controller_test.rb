require 'test_helper'

class Admin::PromosControllerTest < ActionController::TestCase
  setup do
    @admin_promo = admin_promos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_promos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_promo" do
    assert_difference('Admin::Promo.count') do
      post :create, admin_promo: { artist: @admin_promo.artist, content: @admin_promo.content, name: @admin_promo.name, release_date: @admin_promo.release_date, release_number: @admin_promo.release_number, release_title: @admin_promo.release_title }
    end

    assert_redirected_to admin_promo_path(assigns(:admin_promo))
  end

  test "should show admin_promo" do
    get :show, id: @admin_promo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_promo
    assert_response :success
  end

  test "should update admin_promo" do
    put :update, id: @admin_promo, admin_promo: { artist: @admin_promo.artist, content: @admin_promo.content, name: @admin_promo.name, release_date: @admin_promo.release_date, release_number: @admin_promo.release_number, release_title: @admin_promo.release_title }
    assert_redirected_to admin_promo_path(assigns(:admin_promo))
  end

  test "should destroy admin_promo" do
    assert_difference('Admin::Promo.count', -1) do
      delete :destroy, id: @admin_promo
    end

    assert_redirected_to admin_promos_path
  end
end
