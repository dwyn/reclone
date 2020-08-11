require "reclone/version"

#! Added by moi
require_relative "./reclone/version.rb"
require_relative "./reclone/cli.rb"
require_relative "reclone/user.rb"
require_relative "reclone/octokitty.rb"

require 'pry'
require 'octokit'
require 'net/ping'
require 'dotenv'

module Reclone
  class Error < StandardError; end
  # Your code goes here...
end
