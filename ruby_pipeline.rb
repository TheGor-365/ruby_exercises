def get_men_count_by_year(users)
  men   = users.filter { |user| user[:gender] == 'male' }
  years = men.map { |user| user[:birthday][0, 4] }

  years.reduce({}) do |acc, year|
    acc[year] ||= 0
    acc[year] += 1
    acc
  end
end

users = [
  { name: 'Bronn',   gender: 'male',   birthday: '1973-03-23' },
  { name: 'Reigar',  gender: 'male',   birthday: '1973-11-03' },
  { name: 'Eiegon',  gender: 'male',   birthday: '1963-11-03' },
  { name: 'Sansa',   gender: 'female', birthday: '2012-11-03' },
  { name: 'Jon',     gender: 'male',   birthday: '1980-11-03' },
  { name: 'Robb',    gender: 'male',   birthday: '1980-05-14' },
  { name: 'Tisha',   gender: 'female', birthday: '2012-11-03' },
  { name: 'Rick',    gender: 'male',   birthday: '2012-11-03' },
  { name: 'Joffrey', gender: 'male',   birthday: '1999-11-03' },
  { name: 'Edd',     gender: 'male',   birthday: '1973-11-03' }
]


pp get_men_count_by_year(users)
