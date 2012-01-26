"""
A module inspired by Python's Standard Library random module.

http://docs.python.org/library/random.html
"""

{floor, random} = Math

randrange = (start, stop, step=1) ->
  [start, stop] = [0, start] unless stop
  start + step * floor random() * (1 + stop - start) / step

randint = (start, stop) -> randrange start, stop

choice = (array) -> array[randrange array.length - 1]

sample = (array, number=1) ->
  length = array.length
  random_sample = []
  (choice array) for num in [0...number]

shuffle = (array) ->
  length = array.length
  for i in [length - 1..1]
    j = randrange(i)
    [array[i], array[j]] = [array[j], array[i]]
  array

exports.random = random
exports.randint = randint
exports.randrange = randrange
exports.sample = sample
exports.choice = choice
exports.shuffle = shuffle
