require 'test_helper'

class WordbanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wordbank = wordbanks(:one)
  end

  test "should get index" do
    get wordbanks_url
    assert_response :success
  end

  test "should get new" do
    get new_wordbank_url
    assert_response :success
  end

  test "should create wordbank" do
    assert_difference('Wordbank.count') do
      post wordbanks_url, params: { wordbank: { description: @wordbank.description, topic: @wordbank.topic } }
    end

    assert_redirected_to wordbank_url(Wordbank.last)
  end

  test "should show wordbank" do
    get wordbank_url(@wordbank)
    assert_response :success
  end

  test "should get edit" do
    get edit_wordbank_url(@wordbank)
    assert_response :success
  end

  test "should update wordbank" do
    patch wordbank_url(@wordbank), params: { wordbank: { description: @wordbank.description, topic: @wordbank.topic } }
    assert_redirected_to wordbank_url(@wordbank)
  end

  test "should destroy wordbank" do
    assert_difference('Wordbank.count', -1) do
      delete wordbank_url(@wordbank)
    end

    assert_redirected_to wordbanks_url
  end
end
