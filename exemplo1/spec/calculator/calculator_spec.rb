# frozen_string_literal: true

require 'calculator'

describe Calculator, 'Simples' do
  subject(:calc) { described_class.new }

  context '#sum' do
    it 'positive numbers' do
      # result = subject.sum(5, 5)
      result = calc.sum(5, 5)
      expect(result).to eq(10)
    end

    it 'negative numbers' do
      # result = subject.sum(-2, -5)
      result = calc.sum(-2, -5)
      expect(result).to eq(-7)
    end

    it 'negative and positive' do
      result = calc.sum(9, -5)
      expect(result).to eq(4)
    end

    # xit 'negative and positive' do
    #   result = calc.sum(9, -5)
    #   expect(result).to eq(4)
    # end
  end
end
