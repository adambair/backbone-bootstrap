require 'json'

# Implement an API proxy or a backend here.
module Application
  class Api < Sinatra::Base
    set :root, File.dirname(__FILE__)
    set :logging, true

    post '*' do
      '[POST] API Stub'
    end

    get '*' do
      '[GET] API Stub'
    end
  end
end
