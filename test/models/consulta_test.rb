require "test_helper"

class ConsultaTest < ActiveSupport::TestCase
  test "deve salvar consulta corretamente" do
    paciente = Paciente.new nome: 'Ivan teste', data_nascimento: '04/03/2001', cpf: '161169850-25', email: 'teste@teste.com'

    assert paciente.save

    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '161169850-25', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert medico.save

    consulta = Consulta.new data: '20/12/2022', horario: '11:00', medico_id: medico.id, paciente_id: paciente.id
    assert consulta.save()
  end
  test 'não pode criar consulta sem medico' do

    paciente = Paciente.new nome: 'Ivan teste', data_nascimento: '04-03-2001', cpf: '161169850-25', email: 'teste@teste.com'
    assert paciente.save


    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '161169850-25', email: 'rodrigo@rodrigo.com',
                        especialidade: 'Reumatologista', crm: ''
    assert_not medico.save

    consulta = Consulta.new(data: '20-12-2022', horario: '11:00', medico_id: medico.id, paciente_id: paciente.id)
    assert_not consulta.save()
  end
end
