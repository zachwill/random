vows = require('vows')
assert = require('assert')
random = require('./random')


vows.describe('Random choice function').addBatch(
  'when the function is called on an array':
    topic: ->
      array = [1..10]
      random.choice(array)
    'we get back a single element': (topic) ->
      assert.equal [topic].length, 1

  'when it is called on an array with one element':
    topic: ->
      random.choice([1])
    'we get back that element': (topic) ->
      assert.equal topic, 1

).export(module)


vows.describe('Random sample function').addBatch(
  'when we call the function on just an array':
    topic: ->
      array = [1..10]
      random.sample(array)
    'we get back a single element': (topic) ->
      assert.equal [topic].length, 1

  'when we call the function with a number argument':
    topic: ->
      array = [1..10]
      random.sample(array, 2)
    'we get back an array of that length': (topic) ->
      assert.equal topic.length, 2

).export(module)


vows.describe('Random shuffle function').addBatch(
  'when the function is called on an array':
    topic: ->
      array = [1..10]
      random.shuffle(array)
    'we get back a shuffled array different from the initial one': (topic) ->
      assert.notEqual topic, [1..10]
    'but that are the same length': (topic) ->
      assert.equal topic.length, [1..10].length

  'when the function is called on an array with one element':
    topic: ->
      array = [1]
      random.shuffle(array)
    'we get back an array of the same length': (topic) ->
      assert.equal topic.length, [1].length

).export(module)
