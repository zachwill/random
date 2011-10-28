random
======

Inspired by [Python's Standard Library `random` module]().

```coffeescript
random = require('./random')

# Randomly selected sample number.
array = [0..10]
random.choice(array)

# A number randomly chosen between 0 and 2.
random.randrange(2)

# A number randomly chosen between 2 and 5.
random.randrange(2, 5)

# Randomly chosen 2, 4, or 6.
random.randrange(2, 6, 2)

# Randomly chosen number between 2 and 5.
random.randint(2, 5)

# Single random sample number. Same as choice.
array = [0..10]
random.sample(array)

# Array of two randomly sampled numbers.
array = [0..10]
random.sample(array, 2)

# Returns a randomly shuffled array.
array = [0..10]
random.shuffle(array)
```


Tests
-----

To run the test suite for the module, make sure you have [`vows.js`](http://vowsjs.org/)
installed.

```bash
npm install vows
```

Then run the following from the commandline:

```bash
vows test.coffee
```
