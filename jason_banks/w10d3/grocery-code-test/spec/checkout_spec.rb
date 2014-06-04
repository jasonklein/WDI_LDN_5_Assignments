require_relative 'spec_helper'
require_relative '../checkout'

describe Checkout do

  let (:basket) {basket = ['SR1', 'SR1', 'FR1', 'SR1']}
  let (:co) {Checkout.new(basket)}

  describe ".new" do
    it "creates a new Checkout object that takes a basket of goods" do
      expect(co).to_not be nil
      expect(co.basket).to eq ['SR1', 'SR1', 'FR1', 'SR1']
    end
  end

  describe "#determine_basket_composition" do
    it "determines the basket composition" do
      co.determine_basket_composition
      expect(co.items).to include SR1: 3, FR1: 1, CF1: 0
    end
  end

  describe "#scan_items" do
    it "scans the items and returns a total price" do
      co.determine_basket_composition
      co.scan_items
      expect(co.total_price).to eq 16.61
    end
  end









end