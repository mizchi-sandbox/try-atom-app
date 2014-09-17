window.React = require 'react'
require 'vk'
require './routes'
Application = require './application'
window.addEventListener 'load', -> Application.start()
