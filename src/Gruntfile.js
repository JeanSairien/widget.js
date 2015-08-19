

module.exports = function(grunt) {

    grunt.initConfig({
        less: {
            dev: {
                options: {
                    paths: ["."]
                },
                files: {
                    "static/style.css": "sources/css/style.less",
                },
            }
        },
        watch: {
            less: {
                files: "sources/css/**.less",
                tasks: ['less'],
            },
        },
    });

    grunt.loadNpmTasks('grunt-contrib-less');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('gen', ['less']);
    grunt.registerTask('watcher', ['gen', 'watch']);

    grunt.registerTask('default', ['gen']);

};
