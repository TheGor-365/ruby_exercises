data = ['hexlet', 'online courses', ['php', 'js']]

name, description, (first_topic, second_topic) = data # учли количество элементов
p description


_, _, (first_topic, _) = data
p first_topic

*, (_, second_topic) = data
p second_topic
