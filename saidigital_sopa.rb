require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'haml'
require 'logger'

#Since we're blacking out the whole site, send 503 status for everything.
before do
  status 503
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

#Send 503 status, but render index.
get '/*' do
  haml :index, :format => :html5
end
