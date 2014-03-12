CustomElement = require './custom_element'

class Awesome extends CustomElement
  onCreate: -> 
    @shadow.innerHTML = "Hello!"

  setInnerText: (newText) ->
    @shadow.innerHTML = newText

  Awesome.register('x-awesome')

module.exports = Awesome