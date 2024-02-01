require "test_helper"

class PathsControllerTest < ActionDispatch::IntegrationTest
  test "should create paths" do
    data = {
      :purpose => "WITHDRAWAL",
      :address => "street #1",
      :status => "PENDING",
      :journey => 1
    }

    post api_v1_paths_url, params: { path: data }, as: :json

    assert_response 201
  end


end
