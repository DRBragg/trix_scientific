
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trix_scientific/version"

Gem::Specification.new do |spec|
  spec.name          = "trix_scientific"
  spec.version       = TrixScientific::VERSION
  spec.authors       = ["DRBragg"]
  spec.email         = ["DRBragg@gmail.com"]

  spec.summary       = 'A modified version of Basecamp\'s Trix Editor'
  spec.description   = 'A modified version of Basecamp\'s Trix Editor for use in scientific applications.  Modifications include: Superscript tags, Subscript tags, text underlining, notation sympols, registration symbols, and removal of quote and code blocks'
  spec.homepage      = "https://github.com/DRBragg/trix_scientific"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rails', ['> 4.1', '<= 6.0']

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec-rails", "~> 3.0"
  spec.add_development_dependency 'rspec-activemodel-mocks'
end
