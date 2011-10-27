random
======

Inspired by [Python's Standard Library `random` module]().

```coffeescript
random = require('./random')
array = [0..10]

random.sample(array)     # Single random sample number.

random.sample(array, 2)  # Array of two random numbers.

random.choice(array)     # Single random sample number.
```
