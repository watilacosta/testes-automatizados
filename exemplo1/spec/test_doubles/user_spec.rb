# frozen_string_literal: true

# Duble
describe 'Test Double' do
  it 'Allow messages to double' do
    pessoa = double('Pessoa')
    allow(pessoa).to receive_messages(nome: 'Wátila')
    puts pessoa.nome
  end
end
