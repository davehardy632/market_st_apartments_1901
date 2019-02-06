require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'pry'


class Building
  attr_reader :units, :sum_of_rent_costs
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def each_rent_cost
    rents = []
    @units.map do |unit|
    rents << unit.monthly_rent
    rents

    end
  end

    def sum_of_rent_costs
      sum = each_rent_cost.reduce(0) do |sum, number|
       sum + number
       sum
      end
    end
  end
