require_relative "dwelling"
require_relative "occupant"
require_relative "Useful_Methods"
require 'Date'


class Apartment < Dwelling
  include Useful_Methods

  attr_reader :rent, :lease_start_date, :lease_end_date

  def initialize(address, city, state, zip_code, rent, lease_start_date, lease_end_date, max_capacity=3)
    @address = address
    @city = city
    @state = state
    @zip_code = zip_code
    @rent = rent
    @lease_start_date = lease_start_date
    @lease_end_date = lease_end_date
    @max_capacity = max_capacity
    @current_items = []
  end

  def add_item(first_name, last_name)
    if !full?
      @current_items << Occupant.new(first_name, last_name)
    end
  end
end
