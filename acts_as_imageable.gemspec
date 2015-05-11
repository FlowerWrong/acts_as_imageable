$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_imageable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_imageable"
  s.version     = ActsAsImageable::VERSION
  s.authors     = ["flowerwrong"]
  s.email       = ["sysuyangkang@gmail.com"]
  s.homepage    = "http://blog.thecampus.cc"
  s.summary     = "ActsAsImageable system for rails 4+ applications."
  s.description = "You can use it to write actsAsImageable applications with rails 4 plus."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', "~> 4.2.1"

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'awesome_print', '~> 1.6'

  s.add_dependency 'carrierwave'
  s.add_dependency 'mini_magick'
end
