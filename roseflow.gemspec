# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'roseflow/version'

Gem::Specification.new do |spec|
  spec.name          = "roseflow"
  spec.version       = Roseflow::VERSION
  spec.authors       = ["Lauri Jutila"]
  spec.email         = ["ruby@laurijutila.com"]

  spec.description   = %q{TensorFlow! Ruby!}
  spec.homepage      = "https://github.com/humane-ai/roseflow"

  spec.summary       = %q{TensorFlow! Ruby!}
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
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

  spec.add_dependency "activesupport"
  spec.add_dependency "ffi"
  spec.add_dependency "google-protobuf"
  spec.add_dependency "numo-narray"

  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "factory_girl", "~> 4.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "simplecov"
end
