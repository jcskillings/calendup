require 'test_helper'

class ListPermissionsControllerTest < ActionController::TestCase
  setup do
    @list_permission = list_permissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_permissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_permission" do
    assert_difference('ListPermission.count') do
      post :create, list_permission: { UserId: @list_permission.UserId, listId: @list_permission.listId, permissionType: @list_permission.permissionType, shareStatus: @list_permission.shareStatus }
    end

    assert_redirected_to list_permission_path(assigns(:list_permission))
  end

  test "should show list_permission" do
    get :show, id: @list_permission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_permission
    assert_response :success
  end

  test "should update list_permission" do
    patch :update, id: @list_permission, list_permission: { UserId: @list_permission.UserId, listId: @list_permission.listId, permissionType: @list_permission.permissionType, shareStatus: @list_permission.shareStatus }
    assert_redirected_to list_permission_path(assigns(:list_permission))
  end

  test "should destroy list_permission" do
    assert_difference('ListPermission.count', -1) do
      delete :destroy, id: @list_permission
    end

    assert_redirected_to list_permissions_path
  end
end
