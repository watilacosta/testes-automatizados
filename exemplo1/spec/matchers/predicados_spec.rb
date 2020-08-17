# frozen_string_literal: true

describe 'Matchers Predicados' do
  it 'Positive' do
    expect(10).to be_positive
  end

  it 'Negative' do
    expect(-8).to be_negative
  end

  it 'Nil' do
    valor = nil
    expect(nil).to be_nil
    expect(valor).to be_nil
  end

  it 'Zero' do
    expect(0).to be_zero
  end

  it 'Empty' do
    variavel = ''
    expect(variavel).to be_empty
  end
end
