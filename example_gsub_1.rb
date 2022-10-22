p "Sample".gsub!(/[bcd]/, '*')
p "Program".gsub!(/([gmra])/, '<\1>')
p "Ruby".gsub!(/[tyru]/, '<\1>')
p "String".gsub!(/([ab])/, '*')
