express = require 'express'
sysPath = require 'path'
httpProxy = require 'http-proxy'
errorHandler = require 'errorhandler'
logger = require 'loggy'

config =
	base: '/'
	routes: 
		'/portal/api/*': 'http://localhost:8080'

module.exports = (port, path, callback) ->
	app = express()
	app.use config.base, express.static(path)
	app.use errorHandler()

	for route,target of config.routes
		apiProxy = httpProxy.createServer(target:target)
		app.all route, (req, res) -> apiProxy.web(req, res)
		apiProxy.on('error', (err, req, res) ->
			console.log("API Proxy (#{target}) error #{err.code}")
			res.writeHead(500)
			res.end('Ooops, API server down?')
		)

	app.all config.base, (request, response) ->
		response.sendfile sysPath.resolve sysPath.join path, 'index.html'

	logger.info "Listening on http://localhost:#{port}#{config.base}"
	app.listen parseInt(port)
	callback()
