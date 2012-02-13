# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cacert/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Justin Love"]
  gem.email         = ["git@JustinLove.name"]
  gem.description   = %q{Packages a snapshort of the Curl cacert.pem}
  gem.summary       = %q{Packages the SSL certificate bundle from http://curl.haxx.se/docs/caextract.html into a gem for use in Ruby applications.}
  gem.homepage      = "https://github.com/JustinLove/cacert"

  gem.name          = "cacert"
  gem.require_paths = ["lib"]
  gem.version       = Cacert::VERSION
  gem.licenses      = ['MPL 1.1', 'GPL 2.0', 'LGPL 2.1']

  gem.files         = <<MANIFEST.split("\n")
Gemfile
Rakefile
lib/cacert.rb
lib/cacert/version.rb
share/cacert.pem
MANIFEST
  gem.test_files    = <<TEST_MANIFEST.split("\n")
test/cacert_test.rb
TEST_MANIFEST
  
end
