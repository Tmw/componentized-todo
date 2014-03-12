gulp       = require 'gulp'
concat     = require 'gulp-concat'
browserify = require 'gulp-browserify'


# setup coffeescript compile task
gulp.task 'coffee', ->
  gulp.src('src/app.coffee', {read: false})
    .pipe browserify({transform: ['coffeeify'], extensions: ['.coffee']}) # {transform: ['coffeeify'], extensions: ['.coffee']}
    .pipe concat('app.js')
    .pipe gulp.dest './build'

# setup watch task
gulp.task 'watch', -> gulp.watch 'src/**/*.coffee', ['coffee']

# setup default task
gulp.task 'default', ['coffee', 'watch']