window.React = require 'react'
{Routes, Route, Link, DefaultRoute} = require 'react-router'

###########
## Router
###########
module.exports =
class Router
  _routes = []
  _routes.push(
    DefaultRoute(
      handler: require("../components/default")
    )
  )

  @route: (name, path) ->
    _routes.push(
      Route(
        name: name
        handler: require("../components/#{name}")
        path: path
      )
    )

  @createRoutes: (handler)->
    Routes {location:"hash"}, [
      Route {
        name:"app"
        path:"/"
        handler: handler
      }, _routes
    ]

  @start: (rootHandler) ->
    React.renderComponent @createRoutes(rootHandler), document.body
