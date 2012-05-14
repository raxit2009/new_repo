require 'test_helper'

class FirstsControllerTest < ActionController::TestCase
  setup do
    @first = firsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:firsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first" do
    assert_difference('First.count') do
      post :create, :first => { :contact => @first.contact, :emailid => @first.emailid, :last => @first.last, :name => @first.name, :name => @first.name, :name => @first.name, :number => @first.number, :password => @first.password, :user => @first.user }
    end

    assert_redirected_to first_path(assigns(:first))
  end

  test "should show first" do
    get :show, :id => @first
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @first
    assert_response :success
  end

  test "should update first" do
    put :update, :id => @first, :first => { :contact => @first.contact, :emailid => @first.emailid, :last => @first.last, :name => @first.name, :name => @first.name, :name => @first.name, :number => @first.number, :password => @first.password, :user => @first.user }
    assert_redirected_to first_path(assigns(:first))
  end

  test "should destroy first" do
    assert_difference('First.count', -1) do
      delete :destroy, :id => @first
    end

    assert_redirected_to firsts_path
  end
end
