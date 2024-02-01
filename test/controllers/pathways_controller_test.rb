require "test_helper"

class PathwaysControllerTest < ActionDispatch::IntegrationTest
  test "should get pathways index" do
    get "/api/v1/pathways"
    assert_response :success
  end

  test "should get pathway item" do
    pw = Pathway.first

    get api_v1_pathways_url(pw), as: :json 

    @data = JSON.parse response.body

    assert_equal pw.status, @data[0]['status']
  end

end
