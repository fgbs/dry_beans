require "test_helper"

class PathwayTest < ActiveSupport::TestCase
  def setup
    @pathway = pathways(:route_one)
  end

  test "route active" do
    assert_equal "ACTIVE", @pathway.status
  end

  test "route with one jurney" do
    assert_equal 1, @pathway.journeys.size
  end

end
