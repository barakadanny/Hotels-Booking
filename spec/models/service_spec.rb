require 'rails_helper'

RSpec.describe Service, type: :model do
  describe 'validations' do
    it "is valid with name and icon" do
      service = Service.new(name: 'wifi', icon: 'imgs/wifi.png')
      expect(service).to be_valid
    end

    it "is invalid without both name and icon" do
      service = Service.new(name: nil, icon: nil)
      expect(service).to_not be_valid
    end

    it "is invalid without name" do
      service = Service.new(icon: 'imgs/wifi.png')
      expect(service).to_not be_valid
    end

    it "is invalid without icon" do
      service = Service.new(name: 'wifi')
      expect(service).to_not be_valid
    end
  end
end
