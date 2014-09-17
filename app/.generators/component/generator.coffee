module.exports = (g, {$1}) ->
  g.gen "component.coffee.hbs", "client/components/#{$1}.coffee"
