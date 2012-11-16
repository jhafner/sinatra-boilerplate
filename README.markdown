Sinatra Boilerplate
===================

This is a template for a Sinatra application using the conventions I find most useful. Specifically, haml/sass/coffeescript on Heroku with proper caching.


What does it have?
------------------

* Works on Ruby 1.9.3
* Is ready for the Heroku cedar stack
* Uses [Unicorn](http://unicorn.bogomips.org) as the websever, using 4 workers which seems to perform best for Sinatra/Heroku.
* Includes [Sinatra Contrib](https://github.com/sinatra/sinatra-contrib) and [Sinatra Support](https://github.com/sinefunc/sinatra-support) for some extra features
* Provides support for partials through the [Sinatra Partial](https://github.com/yb66/Sinatra-Partial) gem
* Uses [Haml](http://haml.info), [Coffeescript](http://coffeescript.org), [Compass](http://compass-style.org), and [Sass](http://sass-lang.com) for all your pre-processing needs.
* Uses [my fork](http://github.com/philoye/sinatra-assetpack) of the [Sinatra Assetpack](http://) gem to handle the above, along with cachebusting, minification, and concatenationn. My fork includes a few fixes that haven't been included in the original.
* Includes [Modernizr](http://modernizr.com), [Underscore](http://underscorejs.org), [jQuery](http://jquery.com), [Respond.js](https://github.com/scottjehl/Respond), [Normalize.css](http://necolas.github.com/normalize.css/), and the console wrapper from HTML5 Boilerplate
* Includes Rack::Deflater (for gzipping), Rack::Etag, and [Rack::Cache](https://github.com/rtomayko/rack-cache) (pre-set for Heroku's free [Memcache add-on](https://addons.heroku.com/memcache))
* Has [guard](https://github.com/guard/guard) and [guard-livereload](https://github.com/guard/guard-livereload) (via the [rack-livereload](https://github.com/johnbintz/rack-livereload) middleware so no browser extensions required) ready to go because refreshing yourself is too much work.

Getting started
---------------

````
git clone git://github.com/philoye/sinatra-boilerplate.git
cd sinatra-boilerplate
bundle
bundle exec foreman start
````

If you want to use live-reload to auto-reload your browser on each save, then open a new shell and do this:

````
bundle exec guard
````

Once you are ready to deploy, let's get it on Heroku.

````
heroku create appname
heroku addons:add memcache:5mb
git push heroku master
````

That's it.


License
-------

MIT licensed, do what you want.
