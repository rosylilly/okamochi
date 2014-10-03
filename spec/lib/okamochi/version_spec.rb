describe Okamochi::VERSION do
  subject(:version) { described_class }

  it { expect(version).to be_a(SemanticVersioning::Version) }
end
