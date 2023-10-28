def sort_cases(data)
  sorted_cases = data.sort_by do |row|
    day, month, year = row.first.split('-') # destructuring example
    Time.new(year, month, day)
  end
  sorted_cases.reverse
end

data = [
  ['11-9-2020',  'russia', 10_000],
  ['11-10-2020', 'usa',    35_000],
  ['13-12-2020', 'india',  55_000],
  ['12-11-2020', 'russia', 13_000],
  ['12-12-2020', 'usa',    22_000],
  ['11-12-2020', 'india',  54_000],
]


pp sort_cases data

# result= [
#   ['13-12-2020', 'india',  55_000],
#   ['12-12-2020', 'usa',    22_000],
#   ['11-12-2020', 'india',  54_000],
#   ['12-11-2020', 'russia', 13_000],
#   ['11-10-2020', 'usa',    35_000],
#   ['11-9-2020',  'russia', 10_000]
# ]
