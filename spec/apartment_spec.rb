require 'spec_helper'

describe Apartment do


  let(:co_ops) { Apartment.new("2323 Shasta Dr.", "Davis", "CA", "95616", "$750", Date.new(2016,8,1), Date.new(2017,8,31))}

  describe ".new" do
    it "should have a street name" do
      expect(co_ops.address).to eq("2323 Shasta Dr.")
    end

    it "should reside in a city" do
      expect(co_ops.city).to eq("Davis")
    end

    it "should have a monthly rent price" do
      expect(co_ops.rent).to eq("$750")
    end

    it "should have a lease end date" do
      expect(co_ops.lease_end_date).to eq(Date.new(2017,8,31))
    end

    it "should have a lease start date" do
      expect(co_ops.lease_start_date).to eq(Date.new(2016,8,1))
    end
  end

  describe "#full?" do
    it "should return true at max occupancy" do
      co_ops.add_item("David", "Kang")
      co_ops.add_item("Kevin", "Kang")
      co_ops.add_item("Alex", "Kim")
      expect(co_ops.full?).to eq(true)
    end
    it "should return false when they are more spaces" do
      expect(co_ops.full?).to eq(false)
    end
  end

  describe "#add_item" do
    it "should add an Occupant" do
      co_ops.add_item("Lillian", "choi")
      expect(co_ops.current_items.length).to eq(1)
    end
  end

  describe "#remove_item" do
    it "should remove the first Occupant" do
      co_ops.add_item("David", "Kang")
      co_ops.add_item("Kevin", "Kang")
      co_ops.add_item("Alex", "Kim")
      co_ops.remove_item
      expect(co_ops.current_items.length).to eq(2)
    end
  end
end
