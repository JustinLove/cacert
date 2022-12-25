$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')
require 'minitest/spec'
require 'minitest/autorun'
require 'cacert'

describe Cacert do
  it('returns a filename') {_(Cacert.pem).must_match /cacert.pem/}
  it('points to a file') {_(File.exist?(Cacert.pem)).must_equal true}
  it('sets SSL_CERT_FILE') {
    Cacert.set_in_env
    _(ENV['SSL_CERT_FILE']).must_equal Cacert.pem
  }
  it('returns a url to cacert.pem') {
    _(Cacert.source).must_match /http.*\/cacert\.pem/
  }
end
