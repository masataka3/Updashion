# frozen_string_literal: true

require 'test_helper'

class CaterorysControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get caterorys_index_url
    assert_response :success
  end

  test 'should get show' do
    get caterorys_show_url
    assert_response :success
  end

  test 'should get new' do
    get caterorys_new_url
    assert_response :success
  end

  test 'should get edit' do
    get caterorys_edit_url
    assert_response :success
  end

  test 'should get delete' do
    get caterorys_delete_url
    assert_response :success
  end
end
