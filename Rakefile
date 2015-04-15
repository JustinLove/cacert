#!/usr/bin/env rake
require "bundler/gem_tasks"
require "cacert"

task :update do
  require "httparty"
  File.open(Cacert.pem, "wb") do |f|
    f.write HTTParty.get(Cacert.source).parsed_response
  end
end
