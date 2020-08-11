require_relative 'lib/reclone/version'

Gem::Specification.new do |spec|
  spec.name          = "reclone"
  spec.version       = Reclone::VERSION
  spec.authors       = ["dwieb"]
  spec.email         = ["dwayne.harmon@gmail.com"]

  spec.summary       = %q{This is a short summary. I promise.}
  spec.description   = %q{Cold-pressed chillwave edison bulb master cleanse. Edison bulb deep v pinterest sustainable 8-bit microdosing. Four loko tacos forage celiac tumeric prism laborum, trust fund hashtag tattooed enamel pin drinking vinegar everyday carry. Hot chicken ullamco glossier ipsum fixie sartorial shabby chic ugh irure.}

  spec.homepage      = "https://dwayne.fm"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://google.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dwyn/reclone"
  spec.metadata["changelog_uri"] = "https://github.com/dwyn/reclone/blob/master/CODE_OF_CONDUCT.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #* Added Gems
  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "octokit", "~> 4.0"
  spec.add_dependency "net-ping"
  spec.add_dependency "pry"
  spec.add_dependency "tty"
  spec.add_dependency "clamp"
  spec.add_dependency "git"
  spec.add_dependency "dotenv"
end
