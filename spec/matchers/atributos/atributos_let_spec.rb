require 'pessoa'

describe 'Matchers para atributos de Classes' do
  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = 'Ricardo'
    pessoa.idade = 23
    expect(pessoa).to have_attributes(nome: 'Ricardo', idade: 23)
    expect(pessoa).to have_attributes(nome: starting_with('R'), idade: be >= 20)
  end

  it 'have_attributes' do
    pessoa.nome = 'Rodrigo'
    pessoa.idade = 25
    expect(pessoa).to have_attributes(nome: 'Rodrigo', idade: 25)
    expect(pessoa).to have_attributes(nome: starting_with('R'), idade: be >= 20)
  end
end
