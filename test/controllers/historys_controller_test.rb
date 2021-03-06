# frozen_string_literal: true

require 'test_helper'

class HistorysControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get historys_index_url
    assert_response :success
  end

  test 'should get show' do
    get historys_show_url
    assert_response :success
  end

  test 'should get new' do
    get historys_new_url
    assert_response :success
  end

  test 'should get edit' do
    get historys_edit_url
    assert_response :success
  end
end
