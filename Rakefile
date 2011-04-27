require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "rails-erb-check"
  gem.homepage = "http://github.com/jugyo/rails-erb-check"
  gem.license = "MIT"
  gem.summary = %Q{A command to check syntax as rails's erb.}
  gem.description = %Q{A command to check syntax as rails's erb. It provides the rails-erb-check command.}
  gem.email = "jugyo.org@gmail.com"
  gem.authors = ["jugyo"]
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

task :default => :spec
