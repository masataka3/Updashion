# frozen_string_literal: true

require 'test_helper'

class TextiindexControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get textiindex_show_url
    assert_response :success
  end

  test 'should get new' do
    get textiindex_new_url
    assert_response :success
  end

  test 'should get edit' do
    get textiindex_edit_url
    assert_response :success
  end
end
