require 'set'

states_needed = Set[:mt, :wa, :or, :id, :nv, :ut, :ca, :az]

stations = {}
stations[:kone] = Set[:id, :nv, :ut]
stations[:ktwo] = Set[:wa, :id, :mt]
stations[:kthree] = Set[:or, :nv, :ca]
stations[:kfour] = Set[:nv, :ut]
stations[:kfive] = Set[:ca, :az]

final_stations = Set[]

until states_needed.empty?
  best_station = nil
  states_covered = Set[]

  stations.each do |station, states_for_station|
    covered = states_needed & states_for_station
    if covered.size > states_covered.size
      best_station = station
      states_covered = covered
    end
  end

  final_stations += Set[best_station]
  states_needed -= states_covered
end

puts final_stations