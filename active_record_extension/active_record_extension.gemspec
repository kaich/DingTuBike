$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_record_extension/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_record_extension"
  s.version     = ActiveRecordExtension::VERSION
  s.authors     = ["kaich"]
  s.email       = ["chengkai1853@163.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ActiveRecordExtension."
  s.description = "TODO: Description of ActiveRecordExtension."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
