"""
A module inspired by Python's Standard Library random module.

http://docs.python.org/library/random.html
"""

exports.random = (array) ->
  array[ Math.floor(Math.random() * array.length)]

exports.sample = (array, number) ->
  length = array.length
  number = number or 1
  random_sample = []
  for num in [0...number]
    value = array[ Math.floor(Math.random() * length) ]
    random_sample.push(value)
  random_sample
