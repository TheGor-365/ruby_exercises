def progress_bar(arg)
  result = []

  if arg >= 0 && arg <= 1
    result << '[' + '=' * (arg.floor(1) * 10) + ' ' * ((1 - arg.floor(1)) * 10) + ']'
  end
  result.join
end


pp progress_bar(0.3)
pp progress_bar(1)
pp progress_bar(0)
pp progress_bar(0.6543)
