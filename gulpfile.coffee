gulp = require 'gulp'
pug = require 'gulp-pug'
less = require 'gulp-less'
copy = require 'gulp-copy'
coffee = require 'gulp-coffee'
minifyJS = require 'gulp-minify'
minifyCSS = require "gulp-clean-css"

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
    .pipe do minifyJS
    .pipe gulp.dest 'dist/js'

gulp.task 'watch', ->
    gulp.watch 'src/pug/*.pug', ['pug']
    gulp.watch 'src/less/*.less', ['less']
    gulp.watch 'src/coffee/*.coffee', ['coffee']

gulp.task 'default', ['pug', 'less', 'coffee', 'watch']