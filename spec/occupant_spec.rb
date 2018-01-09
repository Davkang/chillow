require 'spec_helper'

describe Occupant do

  let(:david) { Occupant.new("David", "Kang") }

  describe ".new" do
    it "should have a first name" do
      expect(david.first_name).to eq("David")
    end
    it "should have a last name" do
      expect(david.last_name).to eq("Kang")
    end
  end
end
