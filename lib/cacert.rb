require "cacert/version"

module Cacert
  # Returns the path of the embedded cacert.pem SSL certificates file.
  def self.pem
    File.join(File.dirname(__FILE__), '..', 'share', 'cacert.pem')
  end
end
