require 'test_helper'

class SignersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:signers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create signer" do
    assert_difference('Signer.count') do
      post :create, :signer => { }
    end

    assert_redirected_to signer_path(assigns(:signer))
  end

  test "should show signer" do
    get :show, :id => signers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => signers(:one).to_param
    assert_response :success
  end

  test "should update signer" do
    put :update, :id => signers(:one).to_param, :signer => { }
    assert_redirected_to signer_path(assigns(:signer))
  end

  test "should destroy signer" do
    assert_difference('Signer.count', -1) do
      delete :destroy, :id => signers(:one).to_param
    end

    assert_redirected_to signers_path
  end
end
