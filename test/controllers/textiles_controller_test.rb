# frozen_string_literal: true

require 'test_helper'

class TextilesControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get textiles_index_url
    assert_response :success
  end

  test 'should get show' do
    get textiles_show_url
    assert_response :success
  end

  test 'should get new' do
    get textiles_new_url
    assert_response :success
  end

  test 'should get edit' do
    get textiles_edit_url
    assert_response :success
  end
end
