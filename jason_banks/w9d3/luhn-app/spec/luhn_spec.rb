require_relative 'spec_helper'
require_relative '../luhn'

describe Luhn do

  let(:luhn) { Luhn.new('Luhn CC') }

  describe '.new' do
    it 'creates a new Luhn named "Luhn CC" object' do
      expect(luhn).to_not be nil
    end
  end












end