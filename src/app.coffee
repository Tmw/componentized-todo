require './awesome'

$(document).ready ->

  $("button").click ->
    # fetch element from DOM
    elm = document.getElementsByTagName('x-awesome')[0]

    # execute custom method
    elm.setInnerText("Hello, world!")