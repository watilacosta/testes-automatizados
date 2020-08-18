# frozen_string_literal: true

RSpec::Matchers.define :be_a_multiple_of do |expected|
  match do |actual|
    (actual % expected).zero?
  end

  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected}"
  end

  description do
    "multiplo de #{expected}"
  end
end

describe 9, 'Matcher Customizado' do
  it { is_expected.to be_a_multiple_of(3) }
end
