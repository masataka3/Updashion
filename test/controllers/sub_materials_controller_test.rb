require 'test_helper'

class SubMaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sub_materials_index_url
    assert_response :success
  end

  test "should get show" do
    get sub_materials_show_url
    assert_response :success
  end

  test "should get new" do
    get sub_materials_new_url
    assert_response :success
  end

  test "should get edit" do
    get sub_materials_edit_url
    assert_response :success
  end
end
