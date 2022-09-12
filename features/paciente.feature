Feature:
  As a paciente
  I want to criar, editar, remover e visualizar meu cadastro
  So that possa manter atualizado meu cadastro

  Scenario: cadastrar paciente com cpf invalido
    Given Estou na pagina de cadastrar paciente
    When eu preencho um paciente de nome: 'ivan do nascimento', data_nascimeto: '04/03/2001', cpf: '99999999999', email: 'test@gmail.com' e clico cadastrar
    Then vejo  uma mensagem de erro de cpf invalido

  Scenario: cadastrar paciente com email invalido
    Given Estou na pagina de cadastrar paciente
    When eu preencho um paciente de nome: 'ivan do nascimento', data_nascimeto: '04/03/2001', cpf: '161169850-25', email: 'adcde' e clico cadastrar
    Then vejo  uma mensagem de erro de email invalido
