group_1 = [ 4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7 ]
group_2 = [ 7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0 ]
group_3 = [ 5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2 ]

over_4_feet = Proc.new { |height| height >= 4 }

can_ride_1 = group_1.select(&over_4_feet)
can_ride_2 = group_2.select(&over_4_feet)
can_ride_3 = group_3.select(&over_4_feet)

pp can_ride_1
pp can_ride_2
pp can_ride_3
