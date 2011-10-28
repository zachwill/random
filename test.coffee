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
    'we get back a range of zero to that number': (topic) ->
      assert.deepEqual topic, [0..2]

  'when randrange is passed two arguments':
    topic: ->
      random.randrange(2, 5)
    'we get back a range between those two numbers': (topic) ->
      assert.deepEqual topic, [2..5]

  'when randrange is passed three arguments':
    topic: ->
      random.randrange(2, 8, 2)
    'the third value acts as a step': (topic) ->
      assert.deepEqual topic, [2, 4, 6, 8]

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
