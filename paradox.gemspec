
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "paradox/version"

Gem::Specification.new do |spec|
  spec.name          = "paradox"
  spec.version       = Paradox::VERSION
  spec.authors       = ["Eric Freed"]
  spec.email         = ["efreed09@gmail.com"]

  spec.summary       = %q{Work-in-progress, placeholder only for now.}
  spec.description   = %q{Work-in-progress, placeholder only for now}
  spec.homepage      = "https://github.com/ForeverZer0/paradox"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/paradox/extconf.rb"]


  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler", '~> 1.0'
  spec.add_development_dependency "minitest", "~> 5.0"
end
