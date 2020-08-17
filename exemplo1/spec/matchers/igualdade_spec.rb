# frozen_string_literal: true

describe 'Matchers de Igualdade' do
  it '#equal - testa objeto' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to equal(y)
  end

  it '#be - testa objeto' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to be(y)
  end

  it '#eql - testa valor' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eql(y)
  end

  it '#eq - testa valor' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eq(y)
  end
end
