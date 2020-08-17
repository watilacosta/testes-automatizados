# frozen_string_literal: true

require 'calculator'

describe 'Matchers de Erros' do
  calc = Calculator.new

  it 'ZeroDivisionError' do
    expect { calc.division(5, 0) }.to raise_error(ZeroDivisionError) # Classe do erro
    expect { calc.division(5, 0) }.to raise_error('divided by 0') # Texto do erro
    expect { calc.division(5, 0) }.to raise_error(/divided/) # regex
  end
end
