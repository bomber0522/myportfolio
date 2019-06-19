require 'test_helper'

class EintriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eintries_index_url
    assert_response :success
  end

  test "should get show" do
    get eintries_show_url
    assert_response :success
  end

  test "should get new" do
    get eintries_new_url
    assert_response :success
  end

  test "should get edit" do
    get eintries_edit_url
    assert_response :success
  end

  test "should get create" do
    get eintries_create_url
    assert_response :success
  end

  test "should get update" do
    get eintries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get eintries_destroy_url
    assert_response :success
  end

end
