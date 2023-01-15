require_relative '../SubwayManager.rb'

describe SubwayManager, "#travel_distance" do
  it "calculated the number of stops " do
    subway_manager = SubwayManager.new

    travel_plan = {}

    travel_plan[:start_train] = :n
    travel_plan[:start_station] = 'ts'
    travel_plan[:stop_train] = :l
    travel_plan[:stop_station] = '6th'

    actual = subway_manager.travel_distance(travel_plan)
    expected = 5

    expect(actual).to eql(expected)
  end
end
