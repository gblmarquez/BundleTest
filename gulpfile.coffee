gulp = require 'gulp'
coffee = require 'gulp-coffee'
watch = require 'gulp-watch'
plumber = require 'gulp-plumber'
connect = require 'gulp-connect'
bower = require 'gulp-bower'

gulp.task 'bower', ->
    bower()

gulp.task 'watch', ->
    watch glob: 'app/scripts/**/*.coffee'
        .pipe plumber()
        .pipe coffee()
        .pipe gulp.dest 'app/scripts'

gulp.task 'server', ->
    connect.server root: 'app'

gulp.task 'default', ['bower', 'server', 'watch']
