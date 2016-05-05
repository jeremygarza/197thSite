require 'test_helper'

class AugmentaionContactsControllerTest < ActionController::TestCase
  setup do
    @augmentaion_contact = augmentaion_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:augmentaion_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create augmentaion_contact" do
    assert_difference('AugmentaionContact.count') do
      post :create, augmentaion_contact: { first_name: @augmentaion_contact.first_name, last_name: @augmentaion_contact.last_name, phone: @augmentaion_contact.phone, position: @augmentaion_contact.position, rank: @augmentaion_contact.rank }
    end

    assert_redirected_to augmentaion_contact_path(assigns(:augmentaion_contact))
  end

  test "should show augmentaion_contact" do
    get :show, id: @augmentaion_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @augmentaion_contact
    assert_response :success
  end

  test "should update augmentaion_contact" do
    patch :update, id: @augmentaion_contact, augmentaion_contact: { first_name: @augmentaion_contact.first_name, last_name: @augmentaion_contact.last_name, phone: @augmentaion_contact.phone, position: @augmentaion_contact.position, rank: @augmentaion_contact.rank }
    assert_redirected_to augmentaion_contact_path(assigns(:augmentaion_contact))
  end

  test "should destroy augmentaion_contact" do
    assert_difference('AugmentaionContact.count', -1) do
      delete :destroy, id: @augmentaion_contact
    end

    assert_redirected_to augmentaion_contacts_path
  end
end
