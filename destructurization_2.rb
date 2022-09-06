data = ['hexlet', 'online courses', ['php', 'js']]
# для доступа ко вложенному массиву используются круглые скобки
name, description, (first_topic, second_topic) = data # учли количество элементов
p description

# _ – используется, когда значение не важно
_, _, (first_topic, _) = data # так же все элементы учтены
p first_topic

# * – указывает, что нам не важны все значения
*, (_, second_topic) = data # пропустили элементы в первом массиве, во вложенном количество учтено
p second_topic

# данный пример вызовет исключение: не учли количество элементов
# name, description, (first_topic) = data # Error
