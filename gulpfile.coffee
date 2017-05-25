gulp = require 'gulp'

gulp.task 'default',->
  gulp.src './from/*'
    .pipe gulp.dest './to/'

