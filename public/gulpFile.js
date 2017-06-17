'use strict'

// Load libraries
var gulp = require('gulp');
var livereload = require('gulp-livereload');
var rename = require('gulp-rename');
var sass = require('gulp-sass');
var sassLint = require('gulp-sass-lint');
var uglify = require('gulp-uglify');
var insert = require('gulp-insert');
var crlf = require('gulp-line-ending-corrector');
var rollup = require('rollup-stream');
var source = require('vinyl-source-stream');
const browserSync = require('browser-sync').create()

// Sync with browser, proxy through Node server on 8080
gulp.task('browserSync', function() {
    browserSync.init ( {
      proxy: 'localhost:8080',
      browser: 'google chrome'
    })
})

// Compile Sass into CSS and auto-inject into browser
gulp.task('sass', function() {
    return gulp.src('./css/**/*.scss')
        .pipe(sass({
          outputStyle: 'expanded'
        }).on('error', sass.logError))
        .pipe(gulp.dest('./css'))
        .pipe(browserSync.stream())
})

gulp.task('sass', function () {
    gulp.src('sass/style.scss')
        .pipe(rename('style.min.css'))
        .pipe(sass({ outputStyle: 'compressed' }))
        .pipe(crlf({eolc:'CRLF', encoding:'utf8'}))
        .pipe(gulp.dest('_styles/'))
        .pipe(livereload());
});

//watch for changes in the scss file
gulp.task('watch', function () {
    gulp.watch('sass/**/*', ['sass']);
});

// Run just the tasks
gulp.task('default', ['sass'])

// Watch and serve
gulp.task('serve', ['sass', 'browserSync'], function(){
    gulp.watch('./**/*.html').on('change', browserSync.reload)

    gulp.watch('./css/**/*.scss', ['sass'])

    gulp.watch('./css/**/*.css').on('change', browserSync.reload)
})