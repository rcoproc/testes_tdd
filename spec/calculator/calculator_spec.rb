require 'calculator'

describe Calculator, 'Sobre a Calculadora' do
  # subject(:calc) { described_class.new(1, 2, 3) }

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to equal(12)
      # expect(result).not_to equal(1)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to equal(2)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to equal(-12)
    end
  end

  context '#div' do
    it 'divide by 0' do
      # expect { subject.div(3, 0) }.to raise_exception
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(3, 0) }.to raise_error('divided by 0')
      expect { subject.div(3, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect { subject.div(3, 0) }.to raise_error(/divided/)
    end
  end
end
