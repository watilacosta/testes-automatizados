# frozen_string_literal: true

# Este teste utiliza a tag_filter -t
# Ao rodar no console : rspec -t collection, rodarao apenas os
# testes que pertencam a esta tag filter (collection, :true)
describe [1, 2, 3], 'Array', type: 'collection' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 3)
  end

  it '#match_array' do
    expect(subject).to match_array([1, 2, 3])
  end

  it '#contain_exactly', :slow do # marcado como slow, ele nao roda, pois esta configurado em .rspec
    expect(subject).to contain_exactly(1, 2, 3)
  end
end
