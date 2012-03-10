require "rubygems"
require "bundler"
Bundler.setup
Bundler.require

$:.unshift File.expand_path("../", __FILE__)

require "./lib/api"
require "application"

Sass::Engine::DEFAULT_OPTIONS[:load_paths].tap do |load_paths|
  load_paths << "#{Gem.loaded_specs['compass'].full_gem_path}/frameworks/compass/stylesheets"
end

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'assets/javascripts'
  environment.append_path 'assets/stylesheets'
  # environment.js_compressor = Uglifier.new(:copyright => false)
  # environment.css_compressor = YUI::CssCompressor.new
  run environment
end

map '/api' do
  run Application::Api
end

map '/' do
  run Application::App
end

