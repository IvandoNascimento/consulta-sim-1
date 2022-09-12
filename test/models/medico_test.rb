require "test_helper"

class MedicoTest < ActiveSupport::TestCase
  test 'não pode criar medico sem email ' do
    medico = Medico.new nome: 'Rodrigo Andrade', cpf: '161169850-25', email: '',
                        especialidade: 'Reumatologista', crm: '123456'
    assert_not medico.save
  end
  test 'não pode criar medico sem nome' do
    medico = Medico.new nome: '', cpf: '161169850-25', email: 'rodrigo@gmail.com',
                        especialidade: 'Reumatologista', crm: '123456'
    assert_not medico.save
  end
end

