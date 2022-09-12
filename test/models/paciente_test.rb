require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test 'não pode criar paciente sem email ' do
    paciente = Paciente.new nome: 'Rodrigo Andrade',data_nascimento: '04-03-2001',
                            cpf: '161169850-25', email: ''
    assert_not paciente.save

  end

  test 'não pode criar paciente sem nome' do
    paciente = Paciente.new nome: '',data_nascimento: '04/03/2001', cpf: '161169850-25', email: 'rodrigo@gmail.com'
    assert_not paciente.save
  end
end
