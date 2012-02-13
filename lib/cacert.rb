require "cacert/version"

module Cacert
  def self.pem
    File.join(File.dirname(__FILE__), '..', 'share', 'cacert.pem')
  end
end
