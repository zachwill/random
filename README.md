random
======

Inspired by [Python's Standard Library `random` module]().

```coffeescript
random = require('./random')
array = [0..10]

random.choice(array)     # Single random sample number.

random.sample(array)     # Single random sample number.

random.sample(array, 2)  # Array of two random numbers.

random.shuffle(array)    # Returns a randomly shuffled array.
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
