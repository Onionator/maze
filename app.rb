require('./lib/maze')
require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:one)
end

# one
get ('/one/north') do
  erb(:one)
end

get ('/one/west') do
  erb(:three)
end

get ('/one/south') do
  erb(:eight)
end

get ('/one/east') do
  erb(:two)
end

# two
get ('/two/north') do
  erb(:eight)
end

get ('/two/west') do
  erb(:one)
end

get ('/two/south') do
  erb(:five)
end

get ('/two/east') do
  erb(:three)
end


# three
get ('/three/north') do
  erb(:six)
end

get ('/three/west') do
  erb(:two)
end

get ('/three/south') do
  erb(:six)
end

get ('/three/east') do
  erb(:one)
end

# four
get ('/four/north') do
  erb(:one)
end

get ('/four/west') do
  erb(:six)
end

get ('/four/south') do
  erb(:seven)
end

get ('/four/east') do
  erb(:five)
end

# five
get ('/five/north') do
  erb(:two)
end

get ('/five/west') do
  erb(:four)
end

get ('/five/south') do
  erb(:eight)
end

get ('/five/east') do
  erb(:six)
end

# six
get ('/six/north') do
  erb(:three)
end

get ('/six/west') do
  erb(:five)
end

get ('/six/south') do
  erb(:one)
end

get ('/six/east') do
  erb(:two)
end

# seven
get ('/seven/north') do
  erb(:four)
end

get ('/seven/west') do
  erb(:nine)
end

get ('/seven/south') do
  erb(:one)
end

get ('/seven/east') do
  erb(:eight)
end

# eight
get ('/eight/north') do
  erb(:five)
end

get ('/eight/west') do
  erb(:three)
end

get ('/eight/south') do
  erb(:two)
end

get ('/eight/east') do
  erb(:one)
end
