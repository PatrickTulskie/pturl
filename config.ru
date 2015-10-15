require'bundler'
Bundler.require
require'./a'
$r=Redis.new(db:5)
run Sinatra::Application