require_relative 'spec_helper'
require_relative '../checkout'

describe Checkout do

  
  let (:co1) {Checkout.new(%w(FR1 SR1 FR1 CF1))}

  let (:co2) {Checkout.new(%w(FR1 FR1))}

  let (:co3) {Checkout.new(%w(SR1 SR1 FR1 SR1))}

  describe ".new" do
    it "creates a new Checkout object, 'co1' with a basket of items" do
      expect(co1.basket).to eq %w(FR1 SR1 FR1 CF1)
    end

    it "creates a new Checkout object, 'co2' with a basket of items" do
      expect(co2.basket).to eq %w(FR1 FR1)
    end

    it "creates a new Checkout object, 'co3' with a basket of items" do
      expect(co3.basket).to eq %w(SR1 SR1 FR1 SR1)
    end
  end

  describe "#determine_basket_composition" do
    it "determines the basket composition of co1" do
      co1.determine_basket_composition
      expect(co1.items).to include SR1: 1, FR1: 2, CF1: 1
    end

    it "determines the basket composition of co2" do
      co2.determine_basket_composition
      expect(co2.items).to include SR1: 0, FR1: 2, CF1: 0
    end

    it "determines the basket composition of co3" do
      co3.determine_basket_composition
      expect(co3.items).to include SR1: 3, FR1: 1, CF1: 0
    end
  end

  describe "#scan_items" do
    it "scans co1's items and returns a total price" do
      co1.determine_basket_composition
      co1.scan_items
      expect(co1.total_price).to eq 19.34 
    end

    it "scans co2's items and returns a total price" do
      co2.determine_basket_composition
      co2.scan_items
      expect(co2.total_price).to eq 3.11
    end

    it "scans co3's items and returns a total price" do
      co3.determine_basket_composition
      co3.scan_items
      expect(co3.total_price).to eq 16.61
    end
  end



end