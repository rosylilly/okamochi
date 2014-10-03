describe Okamochi::Config do
  describe '#initialize' do
    it 'should eval block' do
      config = Okamochi::Config.new do |conf|
        conf.selected = 'ayataka'
      end

      expect(config.selected).to eq('ayataka')
    end
  end
end
