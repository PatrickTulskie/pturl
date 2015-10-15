%w(rubygems bundler).each{|g|require g}
Bundler.require
require'./app'
$r=Redis.new(db: 5)
run Sinatra::Application