exports.config =
  # See docs at https://github.com/brunch/brunch/blob/stable/docs/config.md 
  sourceMaps: false
  paths:
    public: 'target/public'
    #watched: ['app', 'test', 'vendor']

  files:
    javascripts:
      #defaultExtension: 'coffee'
      joinTo:
        'app.js': /^app/
        'vendor.js': [/^bower_components/, /^vendor/]
      order:
        before: []
        after: []

    stylesheets:
      #defaultExtension: 'styl'
      joinTo: 
        'app.css': 'app/styles/**'
      order:
        before: []
        after: [
          'vendor/styles/**'
        ]

  server:
    path: 'server.coffee'
    base: '/'
    noPushState: true
