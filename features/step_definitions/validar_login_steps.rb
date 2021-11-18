Dado('que acesso o site da sourcedemo') do
  LoginPage.new.load
end

#como era antes do esquema do cenario
Quando('digitar o usuario {string} e a senha {string}') do |usuario, senha|
  LoginPage.new.user_name.set(usuario)
  LoginPage.new.password.set(senha)
  LoginPage.new.login_button.click
end

#como ficou despois do esquema do cenario
Quando('digitar o {string} e a {string}') do |usuario, senha|
  LoginPage.new.user_name.set(usuario)
  LoginPage.new.password.set(senha)
  LoginPage.new.login_button.click
end

Entao('consigo validar o login com sucesso') do
  texto = LoginPage.new.login_sucesso.text
  expect(texto).to eql('PRODUCTS')
end

Quando('digitar o {string} e a {string} {string}') do |usuario, senha,|
  LoginPage.new.user_name.set(usuario)
  LoginPage.new.password.set(senha)
  LoginPage.new.login_button.click
end

Entao('consigo validar o login com invalido') do
  texto = LoginPage.new.login_invalido.text
  expect(texto).to eql('Epic sadface: Sorry, this user has been locked out.')
end

# Entao('consigo validar o login com {string}') do |status|
#   if status.eql?("sucesso")
#     texto = LoginPage.new.login_sucesso.text
#     expect(texto).to eql('PRODUCTS')
#     sleep 2
#   else
#     texto = LoginPage.new.login_invalido.text
#     expect(texto).to eql('Epic sadface: Sorry, this user has been locked out.')
#     sleep 2
#   end
# end
