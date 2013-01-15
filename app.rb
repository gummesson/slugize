# Gem/lib requirements
require 'rubygems'
require 'sinatra'
require 'date'

APP_NAME = "Slugize"
APP_DESC = "Go ahead, make a slug."

# Set app directory as root
$:.unshift File.dirname(__FILE__)

# App requirements
require 'lib/helpers'
require 'lib/routes'
