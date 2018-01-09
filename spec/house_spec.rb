require 'spec_helper'

describe House do

  let(:my_house) { House.new("802 Forbes Dr.", "Brea", "CA", "92870", "$850000")}

  describe ".new" do
    it "should have a street address" do
      expect(my_house.address).to eq("802 Forbes Dr.")
    end

    it "should reside in a city" do
      expect(my_house.city).to eq("Brea")
    end

    it "should indicate the state of residence" do
      expect(my_house.state).to eq("CA")
    end

    it "should have a zipcode" do
      expect(my_house.zip_code).to eq("92870")
    end

    it "should have an asking price" do
      expect(my_house.asking_price).to eq("$850000")
    end
  end
end
