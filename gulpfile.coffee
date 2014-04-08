gulp = require 'gulp'
coffee = require 'gulp-coffee'
watch = require 'gulp-watch'
plumber = require 'gulp-plumber'
connect = require 'gulp-connect'
bower = require 'gulp-bower'
requirejs = require 'requirejs'

gulp.task 'default', ['bower', 'server', 'watch']

gulp.task 'bower', ->
    bower()

gulp.task 'watch', ->
    watch glob: 'app/scripts/**/*.coffee'
        .pipe plumber()
        .pipe coffee()
        .pipe gulp.dest 'app/scripts'

gulp.task 'coffee', ->
    gulp.src 'app/scripts/**/*.coffee'
        .pipe plumber()
        .pipe coffee()
        .pipe gulp.dest 'app/scripts'

gulp.task 'server', ->
    connect.server root: 'app'

gulp.task 'bundle', ['coffee'], ->
    requirejs.optimize
        baseUrl: 'app/scripts'
        mainConfigFile: 'app/scripts/Config.js'
        out: 'app/scripts/Bootstrap.js'
        preserveLicenseComments: false
        wrapShim: true
        include: [
            'backbone'
            'underscore'
            'jquery'
            'marionette'
            'Bootstrap'
            'Infra'
            'App'
        ]
