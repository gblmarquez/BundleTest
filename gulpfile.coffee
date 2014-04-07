gulp = require 'gulp'
coffee = require 'gulp-coffee'
watch = require 'gulp-watch'
plumber = require 'gulp-plumber'
connect = require 'gulp-connect'
bower = require 'gulp-bower'
requirejs = require 'gulp-requirejs'

gulp.task 'default', ['bower', 'server', 'watch']

gulp.task 'bower', ->
    bower()

gulp.task 'watch', ->
    watch glob: 'app/scripts/**/*.coffee'
        .pipe plumber()
        .pipe coffee()
        .pipe gulp.dest 'app/scripts'

gulp.task 'server', ->
    connect.server root: 'app'

gulp.task 'bundle', ->
    requirejs
        baseUrl: 'app/scripts'
        mainConfigFile: 'app/scripts/Config.js'
        out: 'Bootstrap.js'
        include: [
            'backbone'
            'underscore'
            'jquery'
            'marionette'
            'Bootstrap'
            'Infra'
            'App'
        ]
    .pipe gulp.dest 'app/scripts'
