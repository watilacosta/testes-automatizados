# frozen_string_literal: true

require 'pessoa'

describe 'atributos' do
  # before(:each) do
  #   puts 'Instanciando pessoa'
  #   @pessoa = Pessoa.new
  # end

  around(:each) do |teste|
    puts 'Instanciando pessoa'
    @pessoa = Pessoa.new
    teste.run # dispara o teste
    puts 'Teste finalizado'
  end

  it 'have_attributes 1' do
    @pessoa.nome  = 'Wátila'
    @pessoa.idade = 32
    expect(@pessoa).to have_attributes(nome: 'Wátila', idade: 32)
    expect(@pessoa).to have_attributes(nome: starting_with('W'), idade: (be >= 30))
    expect(@pessoa).to have_attributes(nome: a_string_starting_with('W'), idade: (a_value >= 30))
  end

  it 'have_attributes 2' do
    @pessoa.nome  = 'João'
    @pessoa.idade = 32
    expect(@pessoa).to have_attributes(nome: 'João', idade: 32)
    expect(@pessoa).to have_attributes(nome: starting_with('J'), idade: (be >= 30))
    expect(@pessoa).to have_attributes(nome: a_string_starting_with('J'), idade: (a_value >= 30))
  end
end
