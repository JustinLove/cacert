require "cacert/version"

module Cacert
  # Returns the directory containing the cacert.pem file.
  def self.share_dir
    File.expand_path('../share', __dir__)
  end

  # Returns the path of the embedded cacert.pem SSL certificates file.
  def self.pem
    File.join(share_dir, 'cacert.pem')
  end

  # Sets the SSL_CERT_FILE environment variable to the location of the cacert.pem file.
  def self.set_in_env
    ENV['SSL_CERT_FILE'] = self.pem.to_s
  end

  # The link which cacert.pem can be downloaded from.
  def self.source
    "https://curl.haxx.se/ca/cacert.pem"
  end

end
