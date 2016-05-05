require 'test_helper'

class EngineerContactsControllerTest < ActionController::TestCase
  setup do
    @engineer_contact = engineer_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:engineer_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create engineer_contact" do
    assert_difference('EngineerContact.count') do
      post :create, engineer_contact: { first_name: @engineer_contact.first_name, last_name: @engineer_contact.last_name, phone: @engineer_contact.phone, position: @engineer_contact.position, rank: @engineer_contact.rank }
    end

    assert_redirected_to engineer_contact_path(assigns(:engineer_contact))
  end

  test "should show engineer_contact" do
    get :show, id: @engineer_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @engineer_contact
    assert_response :success
  end

  test "should update engineer_contact" do
    patch :update, id: @engineer_contact, engineer_contact: { first_name: @engineer_contact.first_name, last_name: @engineer_contact.last_name, phone: @engineer_contact.phone, position: @engineer_contact.position, rank: @engineer_contact.rank }
    assert_redirected_to engineer_contact_path(assigns(:engineer_contact))
  end

  test "should destroy engineer_contact" do
    assert_difference('EngineerContact.count', -1) do
      delete :destroy, id: @engineer_contact
    end

    assert_redirected_to engineer_contacts_path
  end
end
