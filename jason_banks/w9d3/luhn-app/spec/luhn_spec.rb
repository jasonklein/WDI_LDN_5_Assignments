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

      expect(luhn.set_amount_of_cards(11)).to include "Amount must be a number equal to 10 or less."
      expect(luhn.amount).to eq 0
    end
  end

  describe '#compile_cards_array' do
    it 'accepts the card numbers and places in an array' do
      array = ['4111111111111111', '4111111111111', '4012888888881881', '378282246310005']
      luhn.compile_cards_array(array)
      expect(luhn.cards_array).to eq ['4111111111111111', '4111111111111', '4012888888881881', '378282246310005']
    end
  end







end