get '/'do
erb :index
end
get '/:s'do
(url=$r.get(params['s'])) ? redirect(url) : @r="Invalid URL"&&erb(:short)
end
post '/'do
(params['u'] =~ URI::regexp ? $r.set((@r=($r.dbsize+1).to_s(36)), params['u']) : @r="Invalid URL")&&erb(:short)
end