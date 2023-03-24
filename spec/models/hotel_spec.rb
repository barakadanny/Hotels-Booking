require 'rails_helper'

RSpec.describe Hotel, type: :model do
  context "validations" do
    it "is valid with a name and address" do
      hotel = Hotel.new(name: "Test Hotel", address: "123 Test Street")
      expect(hotel).to be_valid
    end
  
    it "is invalid without a name" do
      hotel = Hotel.new(address: "123 Test Street")
      expect(hotel).to_not be_valid
    end
  
    it "is invalid without an address" do
      hotel = Hotel.new(name: "Test Hotel")
      expect(hotel).to_not be_valid
    end
  end
end
