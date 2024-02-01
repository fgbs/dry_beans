require "test_helper"

class JourneyTest < ActiveSupport::TestCase
  def setup
    @journey = journeys(:journey_one)
  end
  
  test "journeys with two paths" do
    assert_equal 2, @journey.paths.size
  end

end
