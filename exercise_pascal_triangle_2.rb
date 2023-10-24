def triangle(number)
  (0..number).each do |r|
    numbers_list = [1]
    term, k = 1, 1

    (0..(r - 1)).step(1) do |index|
      term *= ( r - k + 1 ) / k
      numbers_list.push(term)
      k += 1
    end
    pp numbers_list
  end
end

triangle(4)
