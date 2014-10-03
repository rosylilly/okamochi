describe Okamochi::Builder do
  describe '.new' do
    it { expect(Okamochi::Builder.new('null', {})).to be_a(Okamochi::Builder::Null) }
  end
end
