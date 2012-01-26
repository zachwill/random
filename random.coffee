"""
A module inspired by Python's Standard Library random module.

http://docs.python.org/library/random.html
"""

{floor, random} = Math

# Return a random floating point number N such that a <= N <= b for
# a <= b and b <= N <= a for b < a.
uniform = (a, b) ->
  a + random() * (b - a)

# Return a randomly selected element from range(`start`, `stop`, `step`).
randrange = (start, stop, step=1) ->
  [start, stop] = [0, start] unless stop
  start + step * floor random() * (stop - start) / step

# Return a random integer N such that `a` <= N <= `b`.
randint = (a, b) ->
  randrange a, b + 1

# Return a random element from the non-empty sequence `seq`.
choice = (seq) -> seq[randrange seq.length]

# Return a `k` length list of unique elements chosen from the
# population `sequence`. Used for random sampling without replacement.
sample = (population, k=1) ->
  (choice population) for i in [0...k]

# Shuffle the sequence x in place.
shuffle = (x) ->
  for i in [x.length - 1..1] by -1
    j = randrange i + 1
    [x[i], x[j]] = [x[j], x[i]]
  x

exports.random = random
exports.uniform = uniform
exports.randint = randint
exports.randrange = randrange
exports.sample = sample
exports.choice = choice
exports.shuffle = shuffle
