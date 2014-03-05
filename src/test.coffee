# class CustomElement extends HTMLElement
#   createdCallback: ->
#     @shadow = @createShadowRoot()
#     @onCreate?()

#   attachedCallback: -> @onAttached?()
#   detachedCallback: -> @onDetached?()
#   attributeChangedCallback: (attr, oldVal, newVal) -> @onAttributeChanged?(attr, oldVal, newVal)

#   # method to register the element
#   @register: (elementName)->
#     document.registerElement elementName, @


# class Awesome extends CustomElement

#   onCreate: ->
#     @shadow.innerHTML = "<strong>Shadow! whoohoo!</strong>"

#   onAttached: ->
#     console.log 'Inserted into DOM'

#   onDetached: ->
#     console.log 'OK. Doei!'

#   public:
#     booyah: ->
#       alert 'Public API!'

# Awesome.register('x-awesome')


$(document).ready ->
  elm = $('x-awesome').get(0)
  console.dir elm


Awesome = document.registerElement('x-awesome', {
  prototype: Object.create(HTMLElement.prototype)
  
})
