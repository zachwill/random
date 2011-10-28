vows = require('vows')
assert = require('assert')
random = require('./random')


vows.describe('Random choice function').addBatch(
  'when choice is called on an array':
    topic: ->
      array = [1..10]
      random.choice(array)
    'we get back a single element': (topic) ->
      assert.equal [topic].length, 1

  'when choice is called on an array with one element':
    topic: ->
      random.choice([1])
    'we get back that element': (topic) ->
      assert.equal topic, 1

).export(module)


vows.describe('Random range function').addBatch(
  'when randrange is given only one argument':
    topic: ->
      random.randrange(2)
    'we get back a number between zero and that number': (topic) ->
      assert.ok 0 <= topic <= 2

  'when randrange is passed two arguments':
    topic: ->
      random.randrange(2, 5)
    'we get back a number between those two numbers': (topic) ->
      assert.ok 2 <= topic <= 5

  'when randrange is passed three arguments':
    topic: ->
      random.randrange(2, 6, 2)
    'the third value acts as a step': (topic) ->
      assert.ok topic is 2 or topic is 4 or topic is 6

).export(module)


vows.describe('Random int function').addBatch(
  'when we call the function with two numbers':
    topic: ->
      random.randint(1, 10)
    'we get back an integer between those two numbers': (topic) ->
      assert.ok 1 <= topic <= 10

).export(module)


vows.describe('Random sample function').addBatch(
  'when we call sample on just an array':
    topic: ->
      array = [1..10]
      random.sample(array)
    'we get back a single element': (topic) ->
      assert.equal [topic].length, 1

  'when we call sample with a number argument':
    topic: ->
      array = [1..10]
      random.sample(array, 2)
    'we get back an array of that length': (topic) ->
      assert.isArray topic
      assert.equal topic.length, 2

).export(module)


vows.describe('Random shuffle function').addBatch(
  'when shuffle is called on an array':
    topic: ->
      array = [1..10]
      random.shuffle(array)
    'we get back a different array from the initial one': (topic) ->
      assert.notDeepEqual topic, [1..10]
    'but both are the same length': (topic) ->
      assert.equal topic.length, [1..10].length

  'when shuffle is called on an array with one element':
    topic: ->
      array = [1]
      random.shuffle(array)
    'we get back that same element': (topic) ->
      assert.deepEqual topic, [1]

).export(module)
