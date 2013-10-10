module.exports = (grunt)->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    watch:
      files: ['src/coffee/**/*.coffee','spec/coffee/**/*.coffee',]
      tasks: ['coffee','jasmine']
    coffee:
      app:
        src: ['src/coffee/**/*.coffee']
        dest: 'src/js/app.js'
        ext: '.js'
      spec:
        src: ['spec/coffee/**/*.coffee']
        dest: 'spec/js/testSpec.js'
        ext: '.js'

    jasmine:
      src: ['src/js/*.js']
      options:
        specs: 'spec/js/*Spec.js'
        helpers: 'spec/js/*Helper.js'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default', ['watch']
