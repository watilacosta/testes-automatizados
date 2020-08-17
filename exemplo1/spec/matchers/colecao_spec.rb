# frozen_string_literal: true

describe 'all' do
  it { expect([1, 3, 5, 7, 9]).to all be_odd.and be_an(Integer) }
  it { expect(%w[Ruby on Rails]).to all(be_a(String)) }
end
