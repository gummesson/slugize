# Gems
require 'rubygems'
require 'sinatra'

# Standard Library
require 'date'

# Information
APP_NAME = "Slugize"
APP_DESC = "Go ahead, make a slug."

# Set app directory as root
$:.unshift File.dirname(__FILE__)

# App Library
require 'lib/helpers'
require 'lib/routes'
