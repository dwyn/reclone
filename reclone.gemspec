
require_relative 'lib/reclone/version'

Gem::Specification.new do |s|
  s.name          = "reclone"
  s.version       = Reclone::VERSION
  s.summary       = %q{Re-clone a few repos. No biggie.}
  s.description   = %q{Re-clone your most recent 100 repos from GitHub via SSH.}
  
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0")
  
  s.authors       = "Dwayne Harmon"
  s.email         = "harmon.dwayne@gmail.com"
  s.homepage      = "https://github.com/dwyn/reclone"

  s.license       = "MIT"
  s.required_ruby_version = ">= 2.5.0"
  # s.files         = ["lib/reclone.rb"]
  s.files         = `git ls-files -z`.split("\x0")
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "https://github.com/dwyn/reclone"
  # spec.metadata["changelog_uri"] = "https://github.com/dwyn/reclone/blob/master/CODE_OF_CONDUCT.md"
  s.executables   = ["reclone"]
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "pry", '~> 0.13.1'
 
  s.add_dependency "net-ping", '~> 2.0', '>= 2.0.8'
  s.add_dependency "octokit", "~> 4.0"
  s.add_dependency "bundler", "~> 2.1.4"
  s.add_dependency "dotenv", '~> 2.7', '>= 2.7.6'
  # spec.add_dependency "clamp"
  # spec.add_dependency "git", '~> 1.3'
end
