Quando("eu faco cadastro") do
    visit '/users/new'
    fill_in(id:'user_name', with:'Robson')
    find('#user_lastname').set('Rocha')
    find('#user_email').send_keys('rochatech88@gmail.com')
    fill_in(id:'user_address', with:'Três Chaves')
    find('#user_university').set('Anhanguera')
    find('#user_profile').send_keys('Analista de Teste')   
    find('#user_gender').set('Masculino')
    find('#user_age').send_keys('31')
    find('input[value="Criar"').click
    
    sleep(5)
  end
  
  Entao("verifico se fui cadastrado") do
    texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
  end