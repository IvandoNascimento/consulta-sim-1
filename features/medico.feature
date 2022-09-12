Feature: Medico
  As a medico
  I want to adicionar, remover, visualizar e editar meu cadastro
  So that eu nao tenha que fazer isso de forma manual ou presencial


  Scenario: cadastrar medico com nome invalido
    Given estou na pagina de medico
    When eu preencho um medico de nome: 'abc', cpf: '161169850-25', email: 'test@test.com', especialidade: 'Pediatra', crm: '12333' e clico cadastrar
    Then eu vejo uma mensagem de erro de nome invalido

  Scenario: cadastrar medico com sucesso
    Given estou na pagina de medico
    When eu preencho um medico de nome: 'ivan nasc', cpf: '161169850-25', email: 'test@test.com', especialidade: 'Pediatra', crm: '12333' e clico cadastrar
    Then eu vejo uma mensagem que o medico foi cadastrado com sucesso