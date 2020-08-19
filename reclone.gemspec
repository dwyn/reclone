
require_relative 'lib/reclone/version'

Gem::Specification.new do |s|
  s.name          = "reclone"
  s.version       = Reclone::VERSION
  s.summary       = %q{Re-clone a few repos. No biggie.}
  s.description   = %q{Re-clone your most recent 100 repos from GitHub vis SSH.}
  
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0")
  
  s.authors       = "Dwayne Harmon"
  s.email         = "harmon.dwayne@gmail.com"
  s.homepage      = "https://github.com/dwyn/reclone"

  s.license       = "MIT"
  s.required_ruby_version = ">= 2.5.0"
  s.files         = ["lib/reclone.rb"]
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "https://github.com/dwyn/reclone"
  # spec.metadata["changelog_uri"] = "https://github.com/dwyn/reclone/blob/master/CODE_OF_CONDUCT.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # end

  s.executables   = ["reclone"]
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "pry"
 
  s.add_dependency "net-ping"
  s.add_dependency "octokit", "~> 4.0"
  s.add_dependency "bundler", "~> 2.1.4"
  s.add_dependency "dotenv", '~> 2.7', '>= 2.7.6'
  # spec.add_dependency "clamp"
  # spec.add_dependency "git", '~> 1.3'
end
