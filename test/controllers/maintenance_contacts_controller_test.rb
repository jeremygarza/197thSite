require 'test_helper'

class MaintenanceContactsControllerTest < ActionController::TestCase
  setup do
    @maintenance_contact = maintenance_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maintenance_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maintenance_contact" do
    assert_difference('MaintenanceContact.count') do
      post :create, maintenance_contact: { first_name: @maintenance_contact.first_name, last_name: @maintenance_contact.last_name, phone: @maintenance_contact.phone, position: @maintenance_contact.position, rank: @maintenance_contact.rank }
    end

    assert_redirected_to maintenance_contact_path(assigns(:maintenance_contact))
  end

  test "should show maintenance_contact" do
    get :show, id: @maintenance_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maintenance_contact
    assert_response :success
  end

  test "should update maintenance_contact" do
    patch :update, id: @maintenance_contact, maintenance_contact: { first_name: @maintenance_contact.first_name, last_name: @maintenance_contact.last_name, phone: @maintenance_contact.phone, position: @maintenance_contact.position, rank: @maintenance_contact.rank }
    assert_redirected_to maintenance_contact_path(assigns(:maintenance_contact))
  end

  test "should destroy maintenance_contact" do
    assert_difference('MaintenanceContact.count', -1) do
      delete :destroy, id: @maintenance_contact
    end

    assert_redirected_to maintenance_contacts_path
  end
end
