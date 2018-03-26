# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'hair_trigger/version'

Gem::Specification.new do |s|
  s.name = 'hairtrigger'
  s.version = HairTrigger::VERSION
  s.summary = 'easy database triggers for active record'
  s.description = 'allows you to declare database triggers in ruby in your models, and then generate appropriate migrations as they change'

  s.required_ruby_version     = '>= 1.8.7'
  s.required_rubygems_version = '>= 1.3.5'

  s.author            = 'Jon Jensen'
  s.email             = 'jenseng@gmail.com'
  s.homepage          = 'http://github.com/jenseng/hair_trigger'
  s.license           = "MIT"

  s.files = %w(LICENSE.txt Rakefile README.md) + Dir['lib/**/*.rb'] + Dir['lib/**/*.rake'] + Dir['spec/**/*.rb']

  s.add_dependency 'activerecord', '>= 5.2.0.rc2'
  s.add_dependency 'ruby_parser', '~> 3.10'
  s.add_dependency 'ruby2ruby', '~> 2.4'
end
