# select
people_ages = [[34, 1], [23, 0], [44, 0]]

pp people_ages.select { |element| element[0] == 23 && element[1] == 0 }
pp people_ages.select { |element| element[1] == 0 }


puts


# reject
people_ages = [[34, 1], [23, 0], [44, 0]]

pp people_ages.reject { |element| element[0] >= 30 }


puts


# take
people_ages = [[34, 1], [23, 0], [44, 0]]

pp people_ages.take(2)


puts


# any
people_ages = [[34, 1], [23, 0], [44, 0]]

pp people_ages.any? { |element| element[0] == 23 && element[1] == 0 }


puts


# all
people_ages = [[34, 1], [23, 0], [44, 0]]

pp people_ages.all? { |element| element.size >=2 }
