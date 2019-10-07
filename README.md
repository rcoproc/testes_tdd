# Testes TDD com Rspec

Exemplo dos testes TDD da Udemy, Curso de TDD, rspec e capybara do Jackson Pires. [Exemplos completos](https://github.com/jacksonpires/rails-tdd)

* Garantir a qualidade do software

* Segurança e facilidade na manutenção

* Melhor design de software

* Documentação técnica

![Pirâmide de Testes](https://martinfowler.com/bliki/images/testPyramid/test-pyramid.png)

## Premissas básicas de testes

* Testes devem ser confiáveis

* Testes devem ser fáceis de escrever

* Teste devem ser fáceis de entender hoje e no futuro

* Não estamos focados em velocidade!

BetterSpecs

http://www.betterspecs.org/br/

### Rodando todos os testes

rspec spec

## Definições

### LET e LET! [Exemplo](https://github.com/rcoproc/testes_tdd/tree/master/spec/matchers/let)

* Let: Quando você precisa atribuir uma variável, ao invés de usar um bloco before para criar uma variável de instância, use let.
Ao usar let, a variável é carregada apenas quando ela é utilizada pela primeira vez no teste e fica na cache até o teste em
questão terminar.

* Let!: Você pode usar let! Para forçar a invocação do método/helper antes de cada teste.

### One-Liner Sintax - [Exemplo](https://github.com/rcoproc/testes_tdd/blob/master/spec/matchers/ranges/ranges_spec.rb)

* expect(subject) == is_expected

“Descrições implícitas”
it { … }

    it { is_expected.to cover(2) }
    it { is_expected.to cover(2, 5) }

### Agregando Falhas - [Exemplo](https://github.com/rcoproc/testes_tdd/blob/master/spec/matchers/comparacao/comparacao_spec.rb)

    config.define_derived_metadata do |meta|
       meta[:aggregate_failures] = true
    end

    it 'teste', :aggregate_failures do
        ...code...
    end

### Customizando Matchers - [Exemplo](https://github.com/rcoproc/testes_tdd/blob/master/spec/matchers/custom/custom_spec.rb)

    RSpec::Matchers.define :be_a_multiple_of do |expected|
        # expected == 3
        # actual == subject == 18
        match do |actual|
            actual % expected == 0
        end

        failure_message do |actual|
            "expected that #{actual} would be a multiple of #{expected}"
        end

        description do
            "be multiple of #{expected}"
        end
    end

### Hooks - [Example[(https://github.com/rcoproc/testes_tdd/blob/master/spec/spec_helper.rb)

    config.before(:suite) do
        puts "antes de toda a suíte de testes"
    end

* before(:all) # antes de todos os testes

* before(:context)

* after(:all) # depois de todos os testes 

* after(:context)

* before(:suite) # antes de toda a suite de testes

* after (:suite) # depois de toda a suite de testes

* before(:each) # antes de cada teste

* before(:example)

* after(:each) # depois de cada teste

* after(:example)

### Shared Examples - [Exemplo](https://github.com/rcoproc/testes_tdd/blob/master/spec/test_doubles/user_spec.rb)

    include_examples "name"
    it_behaves_like "name"
    it_should_behave_like "name"

### DOUBLE - [Exemplo](https://github.com/rcoproc/testes_tdd/blob/master/spec/test_doubles/user_spec.rb)

* Dublê de Teste é um termo genérico para qualquer objeto falso, utilizado no lugar de um objeto real, para propósitos de testes.

### STUB - [Exemplo](https://github.com/rcoproc/testes_tdd/blob/master/spec/stubs/stubs_spec.rb)

* Um stub nada mais é do que forçar uma resposta especíica para um determinado método de um objeto colaborador.
"Stubs são para a fase de Stup, **são usados para substituir estados**".

### MOCKS - [Exemplo](https://github.com/rcoproc/testes_tdd/blob/master/spec/mocks/mocks_spec.rb)

* "Mocks são para a fase e Verify, **sendo usados para testar comportamentos**"
