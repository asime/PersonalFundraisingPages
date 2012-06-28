require 'test_helper'

class FundraisersControllerTest < ActionController::TestCase
  setup do
    @fundraiser = fundraisers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fundraisers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fundraiser" do
    assert_difference('Fundraiser.count') do
      post :create, fundraiser: { deadline: @fundraiser.deadline, description: @fundraiser.description, goal: @fundraiser.goal, title: @fundraiser.title }
    end

    assert_redirected_to fundraiser_path(assigns(:fundraiser))
  end

  test "should show fundraiser" do
    get :show, id: @fundraiser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fundraiser
    assert_response :success
  end

  test "should update fundraiser" do
    put :update, id: @fundraiser, fundraiser: { deadline: @fundraiser.deadline, description: @fundraiser.description, goal: @fundraiser.goal, title: @fundraiser.title }
    assert_redirected_to fundraiser_path(assigns(:fundraiser))
  end

  test "should destroy fundraiser" do
    assert_difference('Fundraiser.count', -1) do
      delete :destroy, id: @fundraiser
    end

    assert_redirected_to fundraisers_path
  end
end
