# frozen_string_literal: true

describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { is_expected.to start_with('Ruby').or start_with('R') }
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva') } # fruta eh um helper
end
