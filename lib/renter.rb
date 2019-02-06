require './lib/renter'
require './lib/apartment'
require 'pry'

class Renter
  attr_reader :name
  def initialize(name)
    @name = name
  end

end
