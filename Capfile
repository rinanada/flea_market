require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/rbenv' 
require 'capistrano/bundler'
require 'capistrano/rails/assets' 
require 'capistrano/rails/migrations' 

load 'deploy'
load 'deploy/assets'
load 'config/deploy'

# require 'capistrano3/unicorn'
# require 'capistrano/rvm'
# require 'capistrano/chruby'
# require 'capistrano/passenger'

# taskを記述したファイルを読み込むよう設定。　場所と拡張子を指定。
Dir.glob('lib/capistrano/tasks/*.rb').each { |r| import r }

