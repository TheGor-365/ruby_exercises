@options = {
  'key_1': 'value_1',
  'key_2': 'value_2'
}

def returner(key, value = nil)
  pp @options.fetch(key.to_s, value)
end


returner(:key_1).inspect
returner(:key_2, 'lala').inspect
returner(:new, 'ehu').inspect
returner(:lalala).inspect
returner(:lalala, 'default').inspect
