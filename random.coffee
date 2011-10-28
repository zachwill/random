"""
A module inspired by Python's Standard Library random module.

http://docs.python.org/library/random.html
"""

choice = (array) ->
  array[ Math.floor(Math.random() * array.length)]


randrange = (stop, start, step=1) ->
  if start
    [stop, start] = [start, stop]
  else
    start = 0
  array = (num for num in [start..stop] by step)
  choice(array)


sample = (array, number=1) ->
  length = array.length
  random_sample = []
  for num in [0...number]
    value = choice(array)
    random_sample.push(value)
  random_sample


shuffle = (array) ->
  length = array.length
  reversed = [1...length].reverse()
  for i in reversed
    j = Math.floor(Math.random() * (i + 1))
    [array[i], array[j]] = [array[j], array[i]]
  array


exports.choice = choice
exports.randrange = randrange
exports.sample = sample
exports.shuffle = shuffle
