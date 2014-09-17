Router = require './lib/router'
App = require './components/application'

module.exports =
class Application
  @start: ->
    Router.start(App)
