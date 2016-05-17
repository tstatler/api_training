#!/usr/bin/env ruby

require "bundler"
Bundler.setup

require "apcera-stager-api"

STDOUT.sync = true

stager = Apcera::Stager.new

# Download the package from the staging coordinator.
puts "Downloading application package..."
stager.download

# Extract the package contents
puts "Extracting package contents..."
stager.extract('app')

# Install Jekyll dependencies
puts "Installing dependencies..."
stager.execute_app("bundle install --path ../site-vendor/bundle --binstubs ../site-vendor/bundle/bin --deployment")

# Set some environment variables to help with ruby handle file encoding
ENV["LC_ALL"] = "en_US.UTF-8"
ENV["LANG"] = "en_US.UTF-8"

# Build the site with Jekyll
puts "Building the site..."
stager.execute_app("../site-vendor/bundle/bin/jekyll build --trace")

# `jekyll build` puts the generated site files into a `_site` folder.
# This tells the stager library to upload the contents of that folder.
# By default, it will upload the contents of the 'app' folder, where the package was extracted
stager.app_path = "/tmp/staging/app/_site"

# Finish staging, this uploads the final package to the staging coordinator.
puts "Staging complete, uploading package to staging coordinator."
stager.complete
