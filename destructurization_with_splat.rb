data = ['hexlet', 'online courses', ['php', 'js']]

name, *rest = data
pp rest             # ["online courses", ["php", "js"]]

name, *rest, topic = data
pp rest             # ["online courses"]
