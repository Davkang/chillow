require 'spec_helper'

describe Dwelling do

  let(:igloo) { Dwelling.new("5000 W International Airport Rd.", "Anchorage", "AK", "99502") }

  describe ".new" do
    it "should have a street name" do
      expect(igloo.address).to eq("5000 W International Airport Rd.")
    end

    it "should reside in a city" do
      expect(igloo.city).to eq("Anchorage")
    end

    it "should indicate the state of residence" do
      expect(igloo.state).to eq("AK")
    end

    it "should have a zipcode" do
      expect(igloo.zip_code).to eq("99502")
    end
  end
end
