# frozen_string_literal: true

describe 'Matchers de Comparação' do
  it 'maior que >' do
    expect(2).to be > 1
  end

  it 'maior ou igual que >=' do
    expect(2).to be >= 1
    expect(1).to be >= 1
  end

  it 'menor que <' do
    expect(2).to be < 10
  end

  it 'menor ou igual que <=' do
    expect(2).to be <= 2
    expect(1).to be <= 5
  end

  it 'be_between' do
    expect(10).to     be_between(10, 50).inclusive
    expect(50).to     be_between(10, 50).inclusive
    expect(10).not_to be_between(10, 50).exclusive
    expect(50).not_to be_between(10, 50).exclusive
  end

  it 'match' do
    expect('watila@email.com.br').to match(/..@../)
  end

  it 'start_with' do
    expect('Fortaleza').to start_with('F')
    expect([1, 2, 3]).to start_with(1)
  end

  it 'end_with' do
    expect('Fortaleza').to end_with('a')
    expect([1, 2, 3]).to end_with(3)
  end
end
