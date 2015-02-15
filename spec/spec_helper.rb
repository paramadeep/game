require_relative "../lib/village"
require 'pry'

RSpec.configure do |c|
  c.filter_run_excluding :nice_to_have => true
end
