require 'test_helper'

class SolverControllerTest < ActionDispatch::IntegrationTest
  test "should get pass" do
    get solver_pass_url
    assert_response :success
  end

  test "should get get" do
    get solver_get_url
    assert_response :success
  end

end
