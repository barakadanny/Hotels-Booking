require 'rails_helper'

RSpec.describe Rtype, type: :model do
  describe "validations" do
    it "is valid with a name" do
      rtype = Rtype.new(name: "wifi")
      expect(rtype).to be_valid
    end

    it "is invalid without a name" do
      rtype = Rtype.new(name: nil)
      expect(rtype).to_not be_valid
    end
  end
end
