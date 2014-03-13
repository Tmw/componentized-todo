gulp       = require 'gulp'
concat     = require 'gulp-concat'
browserify = require 'gulp-browserify'
serve      = require 'connect'
connect = require 'connect'
http = require 'http'
path = require 'path'

# setup coffeescript compile task
gulp.task 'coffee', ->
  gulp.src('src/app.coffee', {read: false})
    .pipe browserify({transform: ['coffeeify'], extensions: ['.coffee']}) # {transform: ['coffeeify'], extensions: ['.coffee']}
    .pipe concat('app.js')
    .pipe gulp.dest './build'

gulp.task 'serve', ->
  port = 3000
  hostname = null # allow to connect from anywhere
  base = path.resolve '.'
  directory = path.resolve '.'

  app = connect()
    .use(connect.static base)
    .use(connect.directory directory)

  http.createServer(app).listen port, hostname

# setup watch task
gulp.task 'watch', -> gulp.watch 'src/**/*.coffee', ['coffee']

# setup default task
gulp.task 'default', ['coffee', 'watch', 'serve']