Given('estou na pagina de medico') do
  visit '/medicos/new'
  expect(page).to have_content('New medico')
end

When('eu preencho um medico de nome: {string}, cpf: {string}, email: {string}, especialidade: {string}, crm: {string} e clico cadastrar') do |nome, cpf, email, especialidade,crm|
  fill_in 'medico[nome]', :with => nome
  fill_in 'medico[cpf]', :with => cpf
  fill_in 'medico[email]', :with => email
  fill_in 'medico[especialidade]', :with => especialidade
  fill_in 'medico[crm]', :with => crm
  click_button 'Create Medico'
end

Then('eu vejo uma mensagem de erro de nome invalido') do
  assert_selector('li', text: 'Nome is too short (minimum is 5 characters)')
end

