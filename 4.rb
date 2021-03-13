## Задача №4:
#
# В соседнем районе рождественские эльфы готовят подарки для жителей города.
# Для каждого подарка (файл data/4.txt) нужно найти сколько оберточной бумаги потребуется.
# Формула рассчета: 2*ш*д + 2*д*в + 2*в*ш + площадь наименьшей стороны
# Например, на подарок размером 2х3х4 требуется 2*6 + 2*12 + 2*8 = 52 + 6 кв. см.
#
# Сколько всего оберточной бумаги нужно купить эльфам?
#
## Требования к решению:
# - Входные данные находятся в файле data/4.txt
# - В значениях данные длины, ширины и высоты не упорядочены и могут идти в любом порядке, однако
# длина всегда наименьшее число из трех, высота - среднее, ширина - самое большое.
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:

file = File.open('data/4.txt', 'r')
paper = 0

file.readlines.each do |string|
  sizes = string.split('x').map(&:to_i).sort
  len = sizes[0]
  height = sizes[1]
  width = sizes[2]
  w_l = width * len
  w_h = width * height
  l_h = len * height
  paper_for_box = w_l * 2 + w_h * 2 + l_h * 3
  paper += paper_for_box
end

puts paper
