# This is what I need in the DB so the app works from cold deploy

data = MTA::LINES

data.each do |line_name, line_hash|
  unless line = Line.find_by(name: line_hash[:name])
    line = Line.create(name: line_hash[:name], color: line_hash[:color])
  end
  line_hash[:stations].each do |address|
    unless station=Station.find_by(address: address)
      station = Station.create(address: address)
    end
    line.stations << station
  end
end
