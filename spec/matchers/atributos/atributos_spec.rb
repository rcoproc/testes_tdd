require 'pessoa'

describe 'Matchers para atributos de Classes' do
  # before(:each) do
  #   puts 'ANTES'
  #   @pessoa = Pessoa.new
  # end

  # after(:example) do
  #   @pessoa.nome = 'Sem nome!'
  #   puts "DEPOIS >>>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts 'ANTES'
    @pessoa = Pessoa.new

    teste.run # Roda o teste

    @pessoa.nome = 'Sem nome!'
    puts "DEPOIS >>>>>>> #{@pessoa.inspect}"
  end

  it 'have_attributes' do
    @pessoa.nome = 'Ricardo'
    @pessoa.idade = 23
    expect(@pessoa).to have_attributes(nome: 'Ricardo', idade: 23)
    expect(@pessoa).to have_attributes(nome: starting_with('R'), idade: be >= 20)
  end

  it 'have_attributes' do
    @pessoa.nome = 'Rodrigo'
    @pessoa.idade = 25
    expect(@pessoa).to have_attributes(nome: 'Rodrigo', idade: 25)
    expect(@pessoa).to have_attributes(nome: starting_with('R'), idade: be >= 20)
  end
end
