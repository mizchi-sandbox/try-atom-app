app           = require 'app'
BrowserWindow = require 'browser-window'
path          = require 'path'

app.on 'ready', ->
  app.commandLine.appendSwitch "js-flags", "--harmony"
  mainWindow = new BrowserWindow
    width: 800
    height: 600

  mainWindow.loadUrl path.join("file://", __dirname, "../client/index.html")
