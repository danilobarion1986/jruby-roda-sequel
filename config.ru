# frozen_string_literal: true

use Rack::Reloader, 0
$LOAD_PATH.unshift('.')
require 'app'
run App.freeze.app
