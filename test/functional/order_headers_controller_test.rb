require 'test_helper'

class OrderHeadersControllerTest < ActionController::TestCase
  setup do
    @order_header = order_headers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_headers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_header" do
    assert_difference('OrderHeader.count') do
      post :create, :order_header => { :aviso => @order_header.aviso, :order => @order_header.order, :vendor_id => @order_header.vendor_id }
    end

    assert_redirected_to order_header_path(assigns(:order_header))
  end

  test "should show order_header" do
    get :show, :id => @order_header
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @order_header
    assert_response :success
  end

  test "should update order_header" do
    put :update, :id => @order_header, :order_header => { :aviso => @order_header.aviso, :order => @order_header.order, :vendor_id => @order_header.vendor_id }
    assert_redirected_to order_header_path(assigns(:order_header))
  end

  test "should destroy order_header" do
    assert_difference('OrderHeader.count', -1) do
      delete :destroy, :id => @order_header
    end

    assert_redirected_to order_headers_path
  end
end
