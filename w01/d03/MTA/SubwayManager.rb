class SubwayManager
  def initialize()
    @network = {}
    @network[:n] = ['tsn', '34n', '28n', '23n', 'us']
    @network[:l] = ['8l', '6l', 'us', '3l', '1l']
    @network[:s] = ['gcs', '33s', '28s', '23s', 'us']
  end

  def menu
    travel_plan = {}
    puts "What train are you starting on?"
    travel_plan[:start_train] = gets.chomp.to_sym
    puts "What station are you starting on?"
    travel_plan[:start_station] = gets_chomp
    puts "What train are you ending on?"
    travel_plan[:end_train] = gets.chomp.to_sym
    puts "What station are you ending on?"
    travel_plan[:end_station] = gets_chomp

    return travel_plan
  end

  def travel_distance(travel_plan)
    if travel_plan[:start_train]  == travel_plan[:end_train]
      train = travel_plan[:start_train]
      start_pos = @network[train].index(travel_plan[:start_station])
      end_pos = @network[train].index(travel_plan[:end_station])
      total_length_of_trip = (end_pos - start_pos).abs
    else
      train_1 = travel_plan[:start_train]
      train_2 = travel_plan[:end_train]
      start_pos = @network[train].index(travel_plan[:start_station])
      end_pos = @network[train].index(travel_plan[:start_station])
      total_length_of_trip = (start_pos - travel_plan[us]).abs + (travel_plan[us] - end_pos).abs
    end

    return total_length_of_trip
  end

  def help
    travel_plan = menu
    total_length_of_trip = travel_distance(travel_plan)
    puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n"
  end
end
