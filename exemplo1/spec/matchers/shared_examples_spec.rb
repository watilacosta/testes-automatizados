# frozen_string_literal: true

require 'pessoa'

shared_examples 'status' do |sentimento|
  it sentimento.to_s do
    pessoa.send("#{sentimento}!") # aqui eh enviado o sentimento com exclamacao que eh igual ao nome do metodo na classe Pessoa
    expect(pessoa.status).to eq("Sentindo-se #{sentimento}!")
  end
end

describe 'Shared Examples' do
  subject(:pessoa) { Pessoa.new }

  # it '#feliz' do
  #   pessoa.feliz!
  #   expect(pessoa.status).to eq('Sentindo-se feliz!')
  # end

  # it '#irritada' do
  #   pessoa.irritada!
  #   expect(pessoa.status).to eq('Sentindo-se irritada!')
  # end

  it_behaves_like 'status', :feliz # chama o shared_examples 'status', passando :feliz
  it_behaves_like 'status', :irritada # chama o shared_examples 'status', passando :irritada
end
