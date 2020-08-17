# frozen_string_literal: true

require 'calculator'
require 'soma'

describe 'Matchers Classes' do
  it 'be_instance_of' do
    expect(100).to be_instance_of(Integer) # Exatamente a Clase
  end

  it 'be_kind_of' do
    soma = Soma.new
    expect(soma).to be_kind_of(Calculator) # Pode ser por Heranca
  end

  it 'respond_to' do
    expect('Samsung').to respond_to(:size)
    expect('Samsung').to respond_to(:downcase)
  end

  it 'be_a' do
    expect('Wátila').to be_a(String)
  end

  it 'be_an' do
    expect(10).to be_an(Integer)
  end
end
