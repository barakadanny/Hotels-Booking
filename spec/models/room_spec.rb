require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "validations" do
    it 'is valid with a description and a price per night greater than or eqaul to zero' do
      hotel = Hotel.new(name: "Test Hotel", address: "123 Test Street")
      room = Room.new(description: "test description", price_per_night: 100, hotel: hotel)
      expect(room).to be_valid
    end
    it 'is invalid without a description' do
      room = Room.new(price_per_night: 100)
      expect(room).not_to be_valid
    end

    it 'is invalid without a price per night' do
      room = Room.new(description: 'test description')
      expect(room).not_to be_valid
    end

    it 'is invalid with a negative price per night' do
      room = Room.new(description: 'test description', price_per_night: -100)
      expect(room).not_to be_valid
    end
  end
end
