describe 'Teste Describe' do
  describe 'Ricardo' do
    it 'String' do
      expect(subject).to eq('Ricardo')
      expect(subject.size).to eq(7)
    end
  end

  describe [1, 2, 3] do
    it 'Array' do
      expect(subject).to be_kind_of(Array)
    end
  end
end
