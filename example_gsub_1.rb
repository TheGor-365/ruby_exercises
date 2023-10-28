pp 'Sample'.gsub!(/[bcd]/, '*')
pp 'Program'.gsub!(/([gmra])/, '<\1>')
pp 'Ruby'.gsub!(/[tyru]/, '<\1>')
pp 'String'.gsub!(/([ab])/, '*')
