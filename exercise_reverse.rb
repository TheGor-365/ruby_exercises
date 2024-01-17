def reverse(string)
  result = []
  index  = 0

  result << string[index -= 1] while result.length <= string.length
  result.join
end
