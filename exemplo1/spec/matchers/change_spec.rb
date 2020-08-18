# frozen_string_literal: true

require 'contador'

describe 'Matcher change' do
  it { expect { Contador.incrementa }.to(change { Contador.quantidade }) }               # qtd 1
  it { expect { Contador.incrementa }.to(change { Contador.quantidade }.by(1)) }         # qtd 2 -> incrementa em 1
  it { expect { Contador.incrementa }.to(change { Contador.quantidade }.from(2).to(3)) } # qtd 3 -> muda de 2 para 3
end
