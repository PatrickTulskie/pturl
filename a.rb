e="Invalid"
get '/'do
erb :i
end
get '/:s'do
(u=$r.get(params['s'])) ? redirect(u) : @r=e&&erb(:s)
end
post '/'do
(params['u'] =~ URI::regexp ? $r.set((@r=($r.dbsize+1).base62_encode), params['u']) : @r=e)&&erb(:s)
end