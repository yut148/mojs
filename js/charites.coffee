h      = require './helpers'
Bubble = require './bits/Bubble'
Burst  = require './bits/Burst'

class Charites
  Bubble: Bubble
  Burst:  Burst

charites = new Charites

if (typeof define is "function") and define.amd
  define "charites", [], -> charites
else if typeof module is "object" and typeof module?.exports is "object"
  module.exports = charites
else window?.charites = charites

# TODO
#   check foreign context

canvas = document.getElementById 'js-canvas'
console.log canvas

# wrapper = document.getElementById 'js-wrapper'
bubble = new charites.Burst
  # parent:   wrapper
  el: canvas
  radius:    {20: 80}
  fill: {'#000': '#ff0000'}
  color: {'#f0f': 'orange'}
  lineWidth: {20:1}
  shape:     'line'
  position: {x: 600, y: 600 }
  duration: 5000

#   dimentions: { x: 400, y: 400 }

# for i in [0..20]
#   a = h.rand(1,20)
#   r = h.rand(-200,200)
#   bubble.chain
#     duration: 1000
#     rateEnd: if i % 2 is 0 then .5 else 2.5
#     # angleEnd: r


# window.addEventListener 'click', (e)->
#   # bubble.setPosition e.x, e.y
#   a = h.rand(1,20)
#   r = h.rand(-20,20)
#   # console.log a
#   bubble.run
#     # lineWidthEnd: a
#     # angleEnd:     r
#     position:    x:e.x, y:e.y
#     positionEnd: x:200, y:200
#     # bitSpikes: 3
#     duration: 500
#     # fillEnd: '#0F0'
#     # colorEnd: 'black'
#     # bitRadiusEnd: 20


















