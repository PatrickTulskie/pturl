get '/' do; erb :index; end
get '/:hash' do
  (url = $redis.get(params['hash'])) ? redirect(url) : @result = "Invalid URL" && erb(:short)
end
post '/' do
  (params['url'] =~ URI::regexp ? $redis.set((@result = SecureRandom.hex(3)), params['url']) :  @result = "Invalid URL") and erb :short
end