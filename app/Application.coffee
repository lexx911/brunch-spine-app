Spine = require('spine')
Pen = require('lib/space-pen')

class Application extends Spine.Controller

	constructor: (el = document.body) ->
		super(el: el)
		@log 'Hello, there.'
		@append "<h1>Hello, world!</h1>"

	@main: (el) ->
		$ () -> new Application(el)

module.exports = Application
