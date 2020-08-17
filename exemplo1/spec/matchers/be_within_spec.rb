# frozen_string_literal: true

describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect([12.1, 12.3, 12.8]).to all(be_within(0.9).of(12)) }
end
