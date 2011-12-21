module Application
  class App < Sinatra::Base
    set :root, File.dirname(__FILE__)
    set :logging, true

    get '/' do
      haml :index
    end
  end
end
