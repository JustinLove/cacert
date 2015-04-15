require "cacert/version"

module Cacert

  # Returns the path of the embedded cacert.pem SSL certificates file.
  def self.pem
    File.join(File.dirname(__FILE__), '..', 'share', 'cacert.pem')
  end

  def self.set_in_env
    ENV['SSL_CERT_FILE'] = self.pem.to_s
  end

  def self.source
  	"http://curl.haxx.se/ca/cacert.pem"
  end

end
