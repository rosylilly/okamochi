describe Okamochi::CLI do
  describe '#version' do
    it 'should retun version string' do
      expect { Okamochi::CLI.new.invoke('version') }.to output("okamochi v#{Okamochi::VERSION}\n").to_stdout
    end
  end
end
