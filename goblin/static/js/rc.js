'use strict';

// global configuration
var require = {
	baseUrl: '/s/js',
	urlArgs : 'v=' + v,
	waitSeconds: 30,
	paths : {
		'base': '../',
		'require-css' : 'libs/require/css',
		'normalize' : 'libs/require/normalize',
		'domReady' : 'libs/require/domReady',
		
		//jquery
		'$':'libs/jquery/jquery-1.11.0.min',
		
		// underscore
		'underscore' : 'libs/underscore/underscore-1.6.min',
		
		// jquery validation 1.11.1
		'v' : 'libs/jquery.validation/1.11.1/jquery.validate.min',
		'va' : 'libs/jquery.validation/1.11.1/additional-methods.min',
		'vi' : 'libs/jquery.validation/messages_zh',
		'validation' : 'libs/jquery.validation/local-additional-methods',
			
		//jquery modal
		'modal' : 'libs/jquery.modal/jquery.modal',
		
		//bxslider
		'bxslider' : 'libs/jquery.bxslider/jquery.bxslider.min',
	},
	shim : {
		'require-css' : ['normalize'],
		'validation' : ['v', 'va', 'vi'],
		'modal' : ['css!libs/jquery.modal/jquery.modal.css'],
		'bxslider' : ['css!libs/jquery.bxslider/jquery.bxslider.css'],
		'underscore': { exports: '_'}
	},
	map : {
		'*' : {
			'css' : 'require-css'
		}
	}
};