# Brunch with Spine
This is a simple coffee skeleton for [Brunch](http://brunch.io/).

Main languages are [CoffeeScript](http://coffeescript.org/),
[Stylus](http://learnboost.github.com/stylus/) and
[Spine Library](http://spinejs.com/).

## Getting started

Clone the repo and run `npm install` & `bower install` & `brunch build`.
See more info on the [official site](http://brunch.io)

## Overview

    +-- assembly.xml
    +-- bower.json
    +-- build.js
    +-- config.coffee
    +-- package.json
    +-- pom.xml
    +-- README.md
    +-- server.coffee
    +-- app
    |   +-- Application.coffee
    |   +-- spine.coffee
    |   +-- assets
    |   |   +-- index.html
    |   |
    |   +-- controllers
    |   +-- lib
    |   |   +-- setup.coffee
    |   |   +-- space-pen.coffee
    |   |   +-- spine
    |   |       +-- ajax.coffee
    |   |       +-- bindings.coffee
    |   |       +-- list.coffee
    |   |       +-- local.coffee
    |   |       +-- manager.coffee
    |   |       +-- relation.coffee
    |   |       +-- route.coffee
    |   |       +-- spine.coffee
    |   |
    |   +-- models
    |   |   +-- Model.coffee
    |   |
    |   +-- styles
    |   |   +-- index.styl
    |   |
    |   +-- views
    +-- test
    |   +-- spec.coffee
    |
    +-- vendor
        +-- scripts
        +-- styles

* `package.json` specifies all dependencies for this app. Please _edit_.
* `pom.xml` makes this project a Maven project for easy include as maven 
dependency. Please _edit_.
* `assembly.xml` packaging information for maven. Project will be packed 
as a single zip file.
* `config.coffee` contains configuration of your app. You can set plugins /
languages that would be used here.
* `bower.json` you can import any [Bower](http://bower.io/) component here.
* `build.js` all-in-one script to build project. It calls: `npm install` then `bower install` then `brunch build`.
* `server.coffee` contains a server script that can be used with `brunch watch --server`
It includes a configuration for backend proxyies.
* `app/assets` contains images / static files. Contents of the directory would
be copied to `build/` without change.
Other `app/` directories could contain files that would be compiled. Languages,
that compile to JS (coffeescript, roy etc.) or js files and located in app are
automatically wrapped in module closure so they can be loaded by
`require('module/location')`.
* `app/models` contains Spine model classes.
* `app/controllers` contains Spine Controller classes.
* `test/` contains feature & unit tests.
* `vendor/` contains all third-party code. The code wouldn’t be wrapped in
modules, it would be loaded instantly instead.

This all will generate `target/public/` (by default) directory when `brunch build` or `brunch watch` is executed.

## License

The license is [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).

