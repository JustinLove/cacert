# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cacert/version'

Gem::Specification.new do |spec|
  spec.name          = "cacert"
  spec.authors       = ["Justin Love"]
  spec.version       = Cacert::VERSION
  spec.email         = ["git@JustinLove.name"]

  spec.description   = %q{Packages a snapshot of the Curl cacert.pem}
  spec.summary       = %q{Packages the SSL certificate bundle from http://curl.haxx.se/docs/caextract.html into a gem for use in Ruby applications.}
  spec.homepage      = "https://github.com/JustinLove/cacert"
  spec.licenses      = ['MPL-1.1', 'GPL-2.0', 'LGPL-2.1']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.3"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency 'minitest', '~> 5.16'
  spec.add_development_dependency 'httparty', '~> 0.20'
end
