require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'roodi'
require 'roodi_task'

RSpec::Core::RakeTask.new(:spec)

desc 'Runs all specs and quality tests, then generates documentation'
task generate_all: [ :specs, :roodi, :documentation ]

RSpec::Core::RakeTask.new(:specs) do |spec|
  spec.pattern = 'spec/*_spec.rb'
  spec.rspec_opts = ['--backtrace']
end

desc 'Generates HTML version'
task :documentation do
  system('redcarpet README.md > README.html') or raise 'unable to generate README.html'
end

RoodiTask.new do |t|
  t.verbose = true
  t.config = File.dirname(__FILE__) + '/roodi.yml'
  t.patterns = [ '**/*.rb' ]
end