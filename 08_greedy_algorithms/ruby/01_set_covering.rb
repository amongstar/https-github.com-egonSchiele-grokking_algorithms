require "set"

# You pass an array in, and it gets converted to a Set.new.
states_needed = Set.new(%w(mt wa or id nv ut ca az))

stations = {}
stations["kone"] = Set.new(%w(id nv ut))
stations["ktwo"] = Set.new(%w(wa id mt))
stations["kthree"] = Set.new(%w(or nv ca))
stations["kfour"] = Set.new(%w(nv ut))
stations["kfive"] = Set.new(%w(ca az))

final_stations = Set.new

until states_needed.empty?
  best_station = nil
  states_covered = Set.new

  stations.each do |station, states|
    covered = states_needed & states
    if covered.length > states_covered.length
      best_station = station
      states_covered = covered
    end
  end

  states_needed -= states_covered
  final_stations << best_station
end

p final_stations
