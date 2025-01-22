=begin
Your friend Linus is a Locomotive Engineer who drives cargo trains between cities. Although they are amazing at
handling trains, they are not amazing at handling logistics or computers. They would like to enlist your programming
help organizing train details and correcting mistakes in route data.
=end
class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons) = wagons

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    (a,b,id_1,*rest) = each_wagons_id

    combine_wagons = *id_1, *missing_wagons,*rest, *a,*b
    combine_wagons
  end

  def self.add_missing_stops(route,**stops)
    stop_list = stops.map {|key,value| value}
    route[:stops] = stop_list
    route
  end

  def self.extend_route_information(route, more_route_information)
    extended_route = {**route,**more_route_information}
    extended_route
  end
end

