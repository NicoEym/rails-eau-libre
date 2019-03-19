require 'test_helper'

class SwimRaceEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get swim_race_events_new_url
    assert_response :success
  end

  test "should get create" do
    get swim_race_events_create_url
    assert_response :success
  end

end
