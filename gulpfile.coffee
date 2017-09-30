gulp = require 'gulp'
pug = require 'gulp-pug'
sass = require 'gulp-sass'
coffee = require 'gulp-coffee'
minifyJS = require 'gulp-minify'
ghPages = require 'gulp-gh-pages'
minifyCSS = require "gulp-clean-css"

copy = (src, dest) ->
    gulp.src src
    .pipe gulp.dest dest

gulp.task 'pug', ->
    gulp.src 'src/pug/*.pug'
    .pipe do pug
    .pipe gulp.dest 'build'

gulp.task 'sass', ->
    gulp.src 'src/sass/*.sass'
    .pipe do sass
    .pipe do minifyCSS
    .pipe gulp.dest 'build/css'

gulp.task 'coffee', ->
    gulp.src 'src/coffee/*.coffee'
    .pipe do coffee
    .pipe do minifyJS
    .pipe gulp.dest 'build/js'

gulp.task 'vendor', ->
    copy 'node_modules/bootstrap/dist/*/*.*', 'build/vendor/bootstrap'
    copy 'node_modules/jquery/dist/*.*', 'build/vendor/jquery/js/'
    copy 'node_modules/font-awesome/css/*.*', 'build/vendor/font-awesome/css'
    copy 'node_modules/font-awesome/fonts/*.*', 'build/vendor/font-awesome/fonts'
    copy 'node_modules/particles.js/*.js', 'build/vendor/particles.js/js'

gulp.task 'build', ['pug', 'sass', 'coffee', 'vendor']

gulp.task 'deploy', ->
    gulp.src 'build/**/*'
    .pipe do ghPages

gulp.task 'watch', ->
    gulp.watch 'src/pug/*.pug', ['pug']
    gulp.watch 'src/sass/*.sass', ['sass']
    gulp.watch 'src/coffee/*.coffee', ['coffee']

gulp.task 'default', ['build', 'watch']