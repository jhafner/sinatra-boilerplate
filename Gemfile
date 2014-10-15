source "https://rubygems.org"
ruby '2.0.0'

gem 'foreman'
gem 'unicorn'
gem 'sinatra', :require => 'sinatra/base'

gem 'dalli'
gem 'rack-cache'

gem 'sinatra-contrib',   :require => 'sinatra/contrib/all'
gem 'sinatra-support',   :require => 'sinatra/support'
gem 'sinatra-partial',   :require => 'sinatra/partial'

#gem 'sinatra-assetpack', :require => 'sinatra/assetpack', :path => '/Users/philoye/code/sinatra-assetpack', :branch => 'my_master'
gem 'sinatra-assetpack', :require => 'sinatra/assetpack', :git => 'git://github.com/philoye/sinatra-assetpack.git', :branch => 'my_master'

gem 'haml'
gem 'sass'
gem 'compass'
gem 'coffee-script'

group :development do
  gem 'sinatra-reloader', :require => 'sinatra/reloader'
  gem 'rack-livereload',  :require => 'rack-livereload'
  gem 'guard'
  gem 'guard-livereload'
  gem 'rb-fsevent', :require => false
  gem 'racksh'
end

