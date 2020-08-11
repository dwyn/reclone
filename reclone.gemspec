require_relative 'lib/reclone/version'

Gem::Specification.new do |spec|
  spec.name          = "reclone"
  spec.version       = Reclone::VERSION
  spec.authors       = ["dwieb"]
  spec.email         = ["dwayne.harmon@gmail.com"]

  spec.summary       = %q{TODO: Write a short summary, because RubyGems requires one.}
  spec.description   = %q{Cold-pressed chillwave edison bulb master cleanse. Edison bulb deep v pinterest sustainable 8-bit microdosing. Four loko tacos forage celiac tumeric prism laborum, trust fund hashtag tattooed enamel pin drinking vinegar everyday carry. Hot chicken ullamco glossier ipsum fixie sartorial shabby chic ugh irure.

Gochujang labore pickled four loko drinking vinegar eiusmod, fam whatever voluptate exercitation ea mumblecore celiac. Retro ex hella air plant typewriter cardigan disrupt aliqua poutine dolore roof party artisan. Tbh live-edge cornhole scenester, duis viral fingerstache 8-bit skateboard knausgaard waistcoat magna readymade forage. Mixtape portland 3 wolf moon voluptate af ut. Disrupt locavore mumblecore, humblebrag voluptate eu pitchfork ramps fanny pack aliquip hashtag distillery mustache dolor before they sold out. Tumblr ugh 3 wolf moon, butcher meh keytar esse do.

Fashion axe humblebrag dolor fingerstache, tofu lomo dolore. Humblebrag edison bulb four loko listicle master cleanse, proident poke gentrify. Brooklyn aliqua velit raw denim schlitz forage culpa edison bulb try-hard. Fam in id minim mustache, eu unicorn yr tousled.

Tousled mlkshk iPhone chartreuse tilde af. Occaecat pinterest street art, kitsch photo booth cred pickled in chartreuse magna in do. Enamel pin ennui actually, lomo glossier bushwick everyday carry. Aliqua tbh tofu 8-bit ut schlitz chicharrones pour-over occupy sartorial. Labore tattooed direct trade polaroid, prism wayfarers pickled. Cloud bread kinfolk street art, XOXO ugh scenester unicorn direct trade vape leggings. Chillwave cray knausgaard aute proident.

Commodo aesthetic semiotics occaecat. Aliquip blog pug enim disrupt proident keytar VHS banjo. Palo santo magna ea, cupidatat chillwave cornhole health goth cardigan.}
  spec.homepage      = "https://dwayne.fm"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dwyn/reclone"
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #* Added Gems
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "octokit", "~> 4.0"
  spec.add_dependency "net-ping"
  spec.add_dependency "pry"
  spec.add_dependency "tty"
  spec.add_dependency "clamp"
  spec.add_dependency "git"
  spec.add_dependency "dotenv"
end
