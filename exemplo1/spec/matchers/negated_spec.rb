# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :exclude, :include

describe [1, 2, 3], 'Negated Matcher' do
  it '#include array' do
    expect(subject).to include(2)
    expect(subject).to include(2, 3)
  end

  it { expect(subject).to exclude(4) }
end
