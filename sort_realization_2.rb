books = [
  'Charlie and the Chocolate Factory',
  'War and Peace',
  'Utopia',
  'A Brief History of Time',
  'A Wrinkle in Time'
]

sort_by_asc  = books.sort! { |firstBook, secondBook| firstBook <=> secondBook }
sort_by_desc = books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

pp sort_by_asc
pp sort_by_desc
