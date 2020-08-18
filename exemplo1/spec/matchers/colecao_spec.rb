# frozen_string_literal: true

# Este teste utiliza a tag_filter -t
# Ao rodar no console : rspec -t type: collection, rodarao apenas os
# testes que pertencam a esta tag filter (collection, :true)
describe 'all', type: 'collection' do
  it { expect([1, 3, 5, 7, 9]).to all be_odd.and be_an(Integer) }
  it { expect(%w[Ruby on Rails]).to all(be_a(String)) }
end
