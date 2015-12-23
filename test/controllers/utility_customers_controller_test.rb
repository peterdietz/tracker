require 'test_helper'

class UtilityCustomersControllerTest < ActionController::TestCase
  setup do
    @utility_customer = utility_customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:utility_customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create utility_customer" do
    assert_difference('UtilityCustomer.count') do
      post :create, utility_customer: { accountNumber: @utility_customer.accountNumber, user_id: @utility_customer.user_id, utility_id: @utility_customer.utility_id }
    end

    assert_redirected_to utility_customer_path(assigns(:utility_customer))
  end

  test "should show utility_customer" do
    get :show, id: @utility_customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @utility_customer
    assert_response :success
  end

  test "should update utility_customer" do
    patch :update, id: @utility_customer, utility_customer: { accountNumber: @utility_customer.accountNumber, user_id: @utility_customer.user_id, utility_id: @utility_customer.utility_id }
    assert_redirected_to utility_customer_path(assigns(:utility_customer))
  end

  test "should destroy utility_customer" do
    assert_difference('UtilityCustomer.count', -1) do
      delete :destroy, id: @utility_customer
    end

    assert_redirected_to utility_customers_path
  end
end
