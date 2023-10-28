require 'active_support/all'

pp Object.const_get 'Module'
pp Object.const_get 'Class'


puts


pp 'Module'.constantize
pp 'Class'.classify.constantize
