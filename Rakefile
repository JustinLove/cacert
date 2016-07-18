#!/usr/bin/env rake
require "bundler/gem_tasks"
require "cacert"

task :update do
  require "httparty"

  if File.file?(Cacert.pem)
    Cacert.set_in_env
  else
    warn "No cacert.pem found."
    warn "Please manually download #{Cacert.source} and place it in #{Cacert.share_dir}."
  end

  File.open(Cacert.pem, "wb") do |f|
    f.write HTTParty.get(Cacert.source).parsed_response
  end
end
