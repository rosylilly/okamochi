describe Okamochi do
  describe '.resolve_const' do
    subject(:resolve_const) { Okamochi.resolve_const(name) }

    context 'with "builder"' do
      let(:name) { 'builder' }

      it { should eq(Okamochi::Builder) }
    end

    context 'with "Builder::Null"' do
      let(:name) { 'Builder::Null' }

      it { expect(resolve_const.name).to eq('Okamochi::Builder::Null') }
    end
  end

  describe '.classify' do
    it { expect(Okamochi.classify('amazon-ebs')).to eq('Amazon::Ebs') }
    it { expect(Okamochi.classify('amazon_ebs')).to eq('AmazonEbs') }
  end

  describe '.underscore' do
    it { expect(Okamochi.underscore('Amazon::EBS')).to eq('amazon/ebs') }
    it { expect(Okamochi.underscore('AmazonEBS')).to eq('amazon_ebs') }
    it { expect(Okamochi.underscore('ActiveModel::Errors')).to eq('active_model/errors') }
  end
end
