require 'okamochi/provisioner/null'

describe Okamochi::Provisioner do
  describe '.new' do
    it { expect(Okamochi::Provisioner.new('null', {})).to be_a(Okamochi::Provisioner::Null) }
  end
end
