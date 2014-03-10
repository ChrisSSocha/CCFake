require 'fileutils'

task :default => [:run]

task :run => :success do
  require_relative 'src/CCFake'
  Sinatra::Application.run!
end

task :success do
  FileUtils.cp_r 'resources/success.xml', 'cctray.xml'
end

task :success_building do
  FileUtils.cp_r 'resources/success_building.xml', 'cctray.xml'
end

task :fail do
  FileUtils.cp_r 'resources/fail.xml', 'cctray.xml'
end

task :fail_building do
  FileUtils.cp_r 'resources/fail_building.xml', 'cctray.xml'
end

task :kill do
  Process.kill 'TERM', File.read('sinatra.pid').to_i
end