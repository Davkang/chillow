require 'spec_helper'

describe Box do

  let(:david) { Occupant.new("David", "Kang")}
  let(:box_container) { Box.new(david)}

  describe ".new" do
    it "should have an owner" do
      expect(box_container.owner).to eq(david)
    end

    it "should have Occupant class" do
      expect(david.class).to eq(Occupant)
    end
  end
end
