require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'haml'
require 'logger'

#Since we're blacking out the whole site, send 503 status.
before do
  status 503

  #Retry at 2:00:00AM PACIFIC TIME Thursday the 19th 2012. 
  #Give everybody in the states enough time to take this down 
  #and replace it with the original site.
  headers 'Retry-After' => 'Thu, 19 Jan 2012 10:00:00 GMT'
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

#Send 503 status, but render index. FOR ALL THE THINGS.
get '/*' do
  haml :index, :format => :html5
end
