RSpec::Matchers.define_negated_matcher :not_be_within, :be_within

describe 'Matcher be_within' do
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(10.0).to not_be_within(0.5).of(12) }
  it { expect([11.6, 12.1, 12.4]).to all(be_within(0.5).of(12)) }
end
