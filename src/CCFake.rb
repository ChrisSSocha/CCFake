require 'sinatra'

File.open('sinatra.pid', 'w') {|f| f.write Process.pid }

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == 'user' and password == 'pass'
end

get '/' do
  send_file 'cctray.xml'
end