gulp = require 'gulp'
pug = require 'gulp-pug'
less = require 'gulp-less'
coffee = require 'gulp-coffee'
minifyJS = require 'gulp-minify'
minifyCSS = require "gulp-clean-css"

copy = (src, dest) ->
    gulp.src src
    .pipe gulp.dest dest

gulp.task 'views', ->
    gulp.src 'src/views/*.pug'
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
    .pipe do minifyJS
    .pipe gulp.dest 'dist/js'

gulp.task 'vendor', ->
    copy 'node_modules/bootstrap/dist/*/*.*', 'dist/vendor/bootstrap'
    copy 'node_modules/jquery/dist/*.*', 'dist/vendor/jquery/js/'
    copy 'node_modules/font-awesome/css/*.*', 'dist/vendor/font-awesome/css'
    copy 'node_modules/font-awesome/fonts/*.*', 'dist/vendor/font-awesome/fonts'
    copy 'node_modules/particles.js/*.js', 'dist/vendor/particles.js/js'

gulp.task 'build', ['views', 'less', 'coffee', 'vendor']

gulp.task 'watch', ->
    gulp.watch 'src/views/*.pug', ['views']
    gulp.watch 'src/less/*.less', ['less']
    gulp.watch 'src/coffee/*.coffee', ['coffee']

gulp.task 'default', ['build', 'watch']