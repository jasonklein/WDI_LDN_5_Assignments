require_relative 'spec_helper'
require_relative '../luhn'

describe Luhn do

  let(:luhn) { Luhn.new('Luhn CC') }

  describe '.new' do
    it 'creates a new Luhn named "Luhn CC" object' do
      expect(luhn).to_not be nil
    end
  end

  describe '#set_amount_of_cards' do
    it 'sets the amount of cards to be input' do
      luhn.set_amount_of_cards(2)
      expect(luhn.amount).to eq 2

      luhn.set_amount_of_cards(10)
      expect(luhn.amount).to eq 10

      luhn.set_amount_of_cards(11)
      expect(luhn.set_amount_of_cards(11)).to include "Amount must be a number equal to 10 or less."
      expect(luhn.amount).to eq 0
    end
  end





end