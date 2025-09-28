require "test_helper"

class LibrarianDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get librarian_dashboard_index_url
    assert_response :success
  end
end
