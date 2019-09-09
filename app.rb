# frozen_string_literal: true

require 'roda'

# Roda's routing tree
class App < Roda
  route do |r|
    # GET / request
    r.root do
      r.redirect '/healthcheck'
    end

    r.is 'healthcheck' do

    end

    r.on 'v1/beneficios' do
      "<h2>Hello Danilo!</h2>"
    end
  end
end
