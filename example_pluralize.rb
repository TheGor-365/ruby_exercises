require 'linguistics'
Linguistics.use :en

pp 'post'.en.plural             # => "posts"
pp 'octopus'.en.plural          # => "octopi"
pp 'sheep'.en.plural            # => "sheep"
pp 'words'.en.plural            # => "words"
pp 'the blue mailman'.en.plural # => "the blue mailmen"
pp 'CamelOctopus'.en.plural     # => "CamelOctopi"
pp 'apple'.en.plural(1)         # => "apple"
pp 'apple'.en.plural(2)         # => "apples"
pp 'ley'.en.plural(:es)         # => "leyes"
pp 'ley'.en.plural(1)           # => "ley"
