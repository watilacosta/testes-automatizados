# frozen_string_literal: true

# Aggregate Failures já está configurado em spec_helper
# Mostra todos os erros de determinado teste sem para o rspec / continua rodando os expect ate o fim
describe 'Agregate Failures' do
  # it 'be_between' do
  #   aggregate_failures do
  #     expect(60).to     be_between(10, 50).inclusive # este erro eh mostrado
  #     expect(70).to     be_between(10, 50).inclusive # este erro eh mostrado
  #     expect(10).not_to be_between(10, 50).exclusive
  #     expect(50).not_to be_between(10, 50).exclusive
  #   end
  # end

  # it 'be_between', aggregate_failures: true do
  #   expect(60).to     be_between(10, 50).inclusive # este erro eh mostrado
  #   expect(70).to     be_between(10, 50).inclusive # este erro eh mostrado
  #   expect(10).not_to be_between(10, 50).exclusive
  #   expect(50).not_to be_between(10, 50).exclusive
  # end
end
