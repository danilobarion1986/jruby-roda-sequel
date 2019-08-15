=begin
#
#---[ File Info ]-------------------------------------------------------------
#
# Source File: config.ru
# Description: Rackup file for running the webserver via RACK middleware
#
#-----------------------------------------------------------------------------
=end

use Rack::Reloader, 0
$LOAD_PATH.unshift('.')
require 'app'
run App.freeze.app
