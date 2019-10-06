# Testes TDD
Exemplo dos testes TDD da Udemy, Curso de TDD, rspec e capybara do Jackson Pires

BetterSpecs

http://www.betterspecs.org/br/

### Rodando todos os testes

rspec spec

## Definições

### LET e LET!

* Let: Quando você precisa atribuir uma variável, ao invés de usar um bloco before para criar uma variável de instância, use let.
Ao usar let, a variável é carregada apenas quando ela é utilizada pela primeira vez no teste e fica na cache até o teste em
questão terminar.

* Let!: Você pode usar let! Para forçar a invocação do método/helper antes de cada teste.

### One Liner Sintax

* expect(subject) == is_expected

“Descrições implícitas”
it { … }

### Hooks

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

### DOUBLE

* Dublê de Teste é um termo genérico para qualquer objeto falso, utilizado no lugar de um objeto real, para propósitos de testes.

### STUB

* Um stub nada mais é do que forçar uma resposta especíica para um determinado método de um objeto colaborador.
"Stubs são para a fase de Stup, **são usados para substituir stados**".

### MOCKS

* "Mocks são para a fase e Verify, **sendo usados para testar comportamentos**"
