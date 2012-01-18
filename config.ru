require './saidigital_sopa'
 
#Uncomment out the following if you aren't deploying on some PaaS.

root_dir = File.dirname(__FILE__)
 
set :environment, ENV['RACK_ENV'].to_sym
set :root,        root_dir
set :app_file,    File.join(root_dir, 'saidigital_sopa.rb')
disable :run

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/sinatra.log", "a+")
$stdout.reopen(log)
$stderr.reopen(log)

 
run Sinatra::Application
