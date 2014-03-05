gulp    = require 'gulp'
coffee  = require 'gulp-coffee'
concat  = require 'gulp-concat'

# setup coffeescript compile task
gulp.task 'coffee', ->
  gulp.src 'src/**/*.coffee'
    .pipe coffee()
    .pipe concat('app.js')
    .pipe gulp.dest './build'

# setup watch task
gulp.task 'watch', -> gulp.watch 'src/**/*.coffee', ['coffee']

# setup default task
gulp.task 'default', ['coffee', 'watch']