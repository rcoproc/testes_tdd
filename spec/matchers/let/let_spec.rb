$counter = 0

describe 'let' do
  let(:count) { $counter += 1 }

  it 'memorira o valor' do
    expect(count).to eq(1) # 1ª vez eh carregado
    expect(count).to eq(1) # 2ª fica em cache
  end

  it 'não é cacheado entre os testes' do
    expect(count).to eq(2) # 1ª vez eh carregado
  end
end
