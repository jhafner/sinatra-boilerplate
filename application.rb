require 'bundler'
ENV['RACK_ENV'] = 'development' unless ENV['RACK_ENV']
Bundler.require(:default, ENV['RACK_ENV'])

class App < Sinatra::Base

  configure do
    env = ENV['RACK_ENV'] || 'development'
    enable   :logging
    enable   :raise_errors

    set      :root, File.dirname(__FILE__)
    set      :sass, { :load_paths => [ "#{App.root}/app/css" ] }
    set      :haml, :format => :html5

    register Sinatra::CompassSupport
    register Sinatra::AssetPack
    register Sinatra::Partial
    enable :partial_underscores
  end

  configure :development do |config|
    require "sinatra/reloader"
    register Sinatra::Reloader
    enable   :show_exceptions
  end

  assets {
    serve '/images', from: 'app/images'
    serve '/js',     from: 'app/js'
    serve '/css',    from: 'app/css'

    # js :'jsforhead', [
    #   '/js/vendor/modernizr.js'
    # ]
    js :application, [
      '/js/vendor/jquery.js',
      '/js/vendor/underscore.js',
      '/js/vendor/console.js',
      '/js/application.js'
    ]
    css :application, [
      '/css/*.css'
    ]
    expires 86400*365, :public
  }

  get '/' do
    cache_control :public, :must_revalidate, :max_age => 3600
    haml :index
  end

  get '/about' do
    cache_control :public, :must_revalidate, :max_age => 3600
    haml :about
  end

end
