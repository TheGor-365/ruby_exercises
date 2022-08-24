h = {
  chocolate: 10,
  icecream: 20,
  shugar: 30
}

pp h.each { |k, v| h[k] = v * 5 }
puts



h = {
  chocolate: 10,
  icecream: 20,
  shugar: 30
}

pp h.transform_values { |v| v * 5 }
puts



h = {
  chocolate: 10,
  icecream: 20,
  shugar: 30
}

pp h.transform_keys { |k| k[0].to_sym }
