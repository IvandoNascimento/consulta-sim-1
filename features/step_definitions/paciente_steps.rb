Given('Estou na pagina de cadastrar paciente') do
  visit '/pacientes/new'
  expect(page).to have_content('New paciente')
end

When('eu preencho um paciente de nome: {string}, data_nascimeto: {string}, cpf: {string}, email: {string} e clico cadastrar') do |nome, data_nascimeto, cpf, email|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => data_nascimeto
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  click_button 'Create Paciente'
end

Then('vejo  uma mensagem de erro de cpf invalido') do
  assert_selector('li', text: 'Cpf formato ou numero errado')
end
