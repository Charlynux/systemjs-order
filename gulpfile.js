var gulp = require('gulp');
var Builder = require('systemjs-builder');

gulp.task('default', function(cb){
	var builder = new Builder('', './config.js');
	
	builder.buildStatic('app.js', 'dist/build.js', { runtime: false, minify: false, mangle: false })
	.then(function() {
		console.log('Bundle finished');
		cb();
	})
	.catch(function(error) {
		console.log('Bundle error');
  		console.log(error);
  		cb();
	});
    
});