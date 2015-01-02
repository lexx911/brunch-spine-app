Spine = require('spine')

class Model extends Spine.Model
	@configure 'Modelname', 'somefield'

	@extend Spine.Model.Ajax

module.exports = Model