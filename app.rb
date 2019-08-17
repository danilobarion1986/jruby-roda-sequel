# frozen_string_literal: true

require 'roda'

# Roda's routing tree
class App < Roda
  route do |r|
    # GET / request
    r.root do
      r.redirect '/hello'
    end

    # /hello branch
    r.on 'hello' do
      # Set variable for all routes in /hello branch
      @greeting = 'Hello'
      # /hello request

      r.is do
        # GET /hello request
        r.get do
          "#{@greeting}!"
        end
      end
    end
  end
end
