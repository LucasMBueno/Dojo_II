class LoginPage < SitePrism::Page
    set_url "https://www.saucedemo.com/"

    element :user_name, '#user-name'
    element :password, '#password'
    element :login_button, '#login-button'
    element :login_sucesso, :xpath, '//*[@id="header_container"]/div[2]/span'
    element :login_invalido, :xpath, '//*[@id="login_button_container"]/div/form/div[3]/h3'

    #element :user_name, :xpath, '//*[@id="user-name"]'

 end