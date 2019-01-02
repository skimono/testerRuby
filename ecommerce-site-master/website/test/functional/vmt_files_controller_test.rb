require 'test_helper'

class VmtFilesControllerTest < ActionController::TestCase
  setup do
    @vmt_file = vmt_files(:one)
    @update = {
      filename: 'test5.vmt',
      description: "another VMT file, yay!",
      vmtdata: "I am the very model of a VMT in visual.",
      is_locked: false
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vmt_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vmt_file" do
    assert_difference('VmtFile.count') do
      post :create, vmt_file: @update
    end

    assert_redirected_to vmt_file_path(assigns(:vmt_file))
  end

  test "should show vmt_file" do
    get :show, id: @vmt_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vmt_file
    assert_response :success
  end

  test "should update vmt_file" do
    put :update, id: @vmt_file, vmt_file: @update
    assert_redirected_to vmt_file_path(assigns(:vmt_file))
  end

  test "should destroy vmt_file" do
    assert_difference('VmtFile.count', -1) do
      delete :destroy, id: @vmt_file
    end

    assert_redirected_to vmt_files_path
  end
end
