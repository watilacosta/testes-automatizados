# frozen_string_literal: true

require 'pessoa'

describe 'atributos' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new } # roda quando a variavel eh invocada pela primeira vez e permanece em cache
  let!(:bem_vindo) { puts 'WELCOME!' } # Com o let bang (let!), a variavel eh chamada antes de cada um dos testes

  it 'have_attributes 1' do
    pessoa.nome  = 'Wátila'
    pessoa.idade = 32
    expect(pessoa).to have_attributes(nome: 'Wátila', idade: 32)
    expect(pessoa).to have_attributes(nome: starting_with('W'), idade: (be >= 30))
    expect(pessoa).to have_attributes(nome: a_string_starting_with('W'), idade: (a_value >= 30))
  end

  it 'have_attributes 2' do
    pessoa.nome  = 'João'
    pessoa.idade = 32
    expect(pessoa).to have_attributes(nome: 'João', idade: 32)
    expect(pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 30))
    expect(pessoa).to have_attributes(nome: a_string_starting_with('J'), idade: (a_value >= 30))
  end
end
