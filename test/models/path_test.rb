require "test_helper"

class PathTest < ActiveSupport::TestCase
  def setup
    @pathway = pathways(:route_one)
    @journey = journeys(:journey_one)

#    @path1 = Path.new()
  end

  test "create paths" do
    start = Time.now
    origin = Path.create(
      purpose: "WITHDRAWAL", 
      address: "street #1",
      distance: 100, 
      start_at: start,
      end_at: start + 10.minutes, 
      estimated_time: 10,
      status: "PENDING",
      journey: @journey
    )

    start = start + 10.minutes
    destination = Path.create(
      purpose: "DELIVERY", 
      address: "street #2",
      distance: 300, 
      start_at: start, 
      end_at: Time.now + 30.minutes,
      estimated_time: 30,
      status: "PENDING",
      journey: @journey
    )

    assert origin.valid?
    assert destination.valid?
  end

end
