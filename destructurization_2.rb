data = ['hexlet', 'online courses', ['php', 'js']]

name, description, (first_topic, second_topic) = data # учли количество элементов
pp description


_, _, (first_topic, _) = data
pp first_topic

*, (_, second_topic) = data
pp second_topic
