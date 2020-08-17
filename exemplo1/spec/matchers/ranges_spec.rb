# frozen_string_literal: true

describe (1..50), 'Matchers Ranges' do
  it '#cover' do
    expect(subject).to cover(1, 50)
    expect(subject).to cover(5, 10)

    is_expected.to cover(1, 50)
    is_expected.to cover(5, 10)
  end

  # inliner_syntax
  it { is_expected.to cover(2) }
  it { is_expected.to cover(5, 10) }
end
