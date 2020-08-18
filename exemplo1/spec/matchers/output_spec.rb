# frozen_string_literal: true

describe 'Matcher output' do
  it { expect { (print 'mondrian') }.to output.to_stdout }
  it { expect { (print 'mondrian') }.to output('mondrian').to_stdout }
  it { expect { (print 'mondrian') }.to output(/mondrian/).to_stdout }

  # errors
  it { expect { (warn 'mondrian') }.to output.to_stderr }
  it { expect { (warn 'mondrian') }.to output("mondrian\n").to_stderr }
  it { expect { (warn 'mondrian') }.to output(/mondrian/).to_stderr }
end
