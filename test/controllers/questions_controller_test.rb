require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get users" do
    get questions_users_url
    assert_response :success
  end

  test "should get tests" do
    get questions_tests_url
    assert_response :success
  end
end
