require 'sinatra'

File.open('sinatra.pid', 'w') {|f| f.write Process.pid }

get '/' do
  send_file 'cctray.xml'
end