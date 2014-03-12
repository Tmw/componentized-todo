class CustomElement extends HTMLElement
  createdCallback: ->
    @shadow = @createShadowRoot()
    @onCreate?()

  # delegate other events
  attachedCallback: -> @onAttached?()
  detachedCallback: -> @onDetached?()
  attributeChangedCallback: (attr, oldVal, newVal) -> @onAttributeChanged?(attr, oldVal, newVal)
  
  # method to register the element
  @register: (elementName)->
    document.registerElement elementName, {prototype: @prototype}

module.exports = CustomElement