Dado('que acesso o site da sourcedemo') do
  visit 'https://www.saucedemo.com/'
end

Quando('digitar o usuario {string} e a senha {string}') do |usuario, senha|
  find(:xpath, '//*[@id="user-name"]').set(usuario)
  find(:xpath, '//*[@id="password"]').set(senha)
  find(:xpath, '//*[@id="login-button"]').click
end

Entao('consigo validar o login com sucesso') do
  texto = find(:xpath, '//*[@id="header_container"]/div[2]/span').text
  expect(texto).to eql('PRODUCTS')
end

Entao('consigo validar o login com invalido') do
  texto = find(:xpath, '//*[@id="login_button_container"]/div/form/div[3]/h3').text
  expect(texto).to eql('Epic sadface: Sorry, this user has been locked out.')
end

