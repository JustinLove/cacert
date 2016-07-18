#!/usr/bin/env rake
require "bundler/gem_tasks"
require "cacert"

task :default => :test
task :test do
  Dir.glob('./test/*_test.rb').each { |file| require file}
end

task :update do
  require "httparty"

  unless File.file?(Cacert.pem)
    warn "No cacert.pem found."
    warn "Please manually download #{Cacert.source} and place it in #{Cacert.share_dir}."
    abort
  end

  Cacert.set_in_env

  new_pem = HTTParty.get(Cacert.source).parsed_response

  abort "Couldn't download #{Cacert.source}." unless new_pem

  File.open(Cacert.pem, "wb") do |f|
    f.write new_pem
  end
end
