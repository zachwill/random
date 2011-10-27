"""
A module inspired by Python's Standard Library random module.

http://docs.python.org/library/random.html
"""

choice = (array) ->
  array[ Math.floor(Math.random() * array.length)]

sample = (array, number=1) ->
  length = array.length
  random_sample = []
  for num in [0...number]
    value = choice(array)
    random_sample.push(value)
  random_sample

randrange = (stop, start, step=1) ->
  if start
    [stop, start] = [start, stop]
  else
    start = 0
  (num for num in [start..stop] by step)

exports.choice = choice
exports.sample = sample
exports.randrange = randrange
