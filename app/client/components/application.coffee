$ = React.DOM

{Link} = require 'react-router'

module.exports = React.createClass
  render: ->
    $.div {}, [
      Link to:"main", 'main'
      Link to:"sub", 'sub'
      @props.activeRouteHandler()
    ]
