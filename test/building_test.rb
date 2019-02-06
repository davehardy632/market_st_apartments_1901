require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'
require 'pry'

class BuildingClass < Minitest::Test

  def setup
    @building = Building.new
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @b2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @spencer = Renter.new("Spencer")
    @jessie = Renter.new("Jessie")
    @b2.add_renter(@spencer)
    @building.add_unit(@a1)
    @building.add_unit(@b2)
    @jessie = Renter.new("Jessie")
  end

  def test_that_building_exists
    assert_instance_of Building, @building
  end

  def test_that_building_adds_units
    @building.add_unit(@a1)
    @building.add_unit(@b2)


    assert_equal [@a1,@b2], @building.units
  end

  def test_sum_of_rent_costs

    assert_equal 2199, @building.sum_of_rent_costs
  end

  def test_average_rent_for_building

    assert_equal 1099.5, @building.average_rent
  end







end
