gulp = require 'gulp'
pug = require 'gulp-pug'
less = require 'gulp-less'
copy = require 'gulp-copy'
coffee = require 'gulp-coffee'
minifyCSS = require 'gulp-clean-css'

gulp.task 'pug', ->
    gulp.src 'src/pug/*.pug'
    .pipe do pug
    .pipe gulp.dest '.'

gulp.task 'less', ->
    gulp.src 'src/less/*.less'
    .pipe do less
    .pipe do minifyCSS
    .pipe gulp.dest 'dist/css'

gulp.task 'coffee', ->
    gulp.src 'src/coffee/*.coffee'
    .pipe do coffee
    .pipe gulp.dest 'dist/js'

gulp.task 'vendor', ->
    gulp.src [
        'bower_components/bootstrap/dist/css/bootstrap.min.css',
        'bower_components/font-awesome/css/font-awesome.min.css',
        'bower_components/jquery/dist/jquery.min.js',
        'bower_components/particles.js/particles.min.js',
        'bower_components/bootstrap/dist/js/bootstrap.min.js'
    ]
    .pipe gulp.dest 'dist/vendor'

gulp.task 'watch', ->
    gulp.watch 'src/pug/*.pug', ['pug']
    gulp.watch 'src/less/*.less', ['less']
    gulp.watch 'src/coffee/*.coffee', ['coffee']

gulp.task 'default', ['pug', 'less', 'coffee', 'vendor', 'watch']