*** Settings ***
Documentation        Suite de testes de cadatro de dog walk

Resource    ../resources/base.resource

Test Setup       Start session
Test Teardown    Finish session

*** Test Cases ***

Deve poder cadastrar um novo dog walker
    [Tags]    smoke

    #como era utilizado as váriaveis antes de adicionar em um novo modo 
   # ${name}              Set Variable       Aline Teste
   # ${email}             Set Variable       aline.teste@teste.com.br
   # ${cpf}               Set Variable       00000014141
   # ${cep}               Set Variable       04534011
   # ${addressStreet}     Set Variable       Rua Joaquim Floriano
   # ${addressDistrict}   Set Variable       Itaim Bibi
   # ${addressCityUf}     Set Variable       São Paulo/SP
   # ${addressNumber}     Set Variable       1000
   # ${addressDetails}    Set Variable       Apto 28
   # ${cnh}               Set Variable       raposa.png 

#novo modo de adicionar as variáveis
    ${dog_walker}        Create Dictionary
    ...    name=Aline Teste    
    ...    email=aline.teste@teste.com.br    
    ...    cpf=00000014141    
    ...    cep=04534011    
    ...    street=Rua Joaquim Floriano    
    ...    district=Itaim Bibi    
    ...    city_uf=São Paulo/SP    
    ...    number=1000    
    ...    details=Apto 28    
    ...    cnh=raposa.png 

    Go to signup page
   # antes de adicionar as variáveis em uma unica variável ficava declarado assim
   #  Fill signup form     ${name}    ${email}    ${cpf}    ${cep}    ${addressStreet}    ${addressDistrict}    ${addressCityUf}    ${addressNumber}    ${addressDetails}    ${cnh}
    Fill signup form         ${dog_walker}
    Submit signup form
    Popup should be          Recebemos o seu cadastro e em breve retornaremos o contato.

Não deve cadastrar se os campos obrigatórios não forem preenchidos
    [Tags]    required

    Go to signup page
    Submit signup form

    Alert should be     Informe o seu nome completo 
    Alert should be     Informe o seu melhor email
    Alert should be     Informe o seu CPF
    Alert should be     Informe o seu CEP
    Alert should be     Informe um número maior que zero
    Alert should be     Adcione um documento com foto (RG ou CHN)
  
Não deve poder cadastrar se o cpf for incorreto
    [Tags]    cpf_inv    

#novo modo de adicionar as variáveis
    ${dog_walker}        Create Dictionary
    ...    name=Aline Teste    
    ...    email=aline.teste@teste.com.br    
    ...    cpf=000000141aa   
    ...    cep=04534011    
    ...    street=Rua Joaquim Floriano    
    ...    district=Itaim Bibi    
    ...    city_uf=São Paulo/SP    
    ...    number=1000    
    ...    details=Apto 28    
    ...    cnh=raposa.png 

    Go to signup page
    Fill signup form         ${dog_walker}
    Submit signup form
    Alert should be        CPF inválido

Deve poder cadastrar um novo dog walker que sabe cuidar de pets
    [Tags]    aservice

    ${dog_walker}        Create Dictionary
    ...    name=Aline Teste    
    ...    email=aline.teste@teste.com.br    
    ...    cpf=00000014141    
    ...    cep=04534011    
    ...    street=Rua Joaquim Floriano    
    ...    district=Itaim Bibi    
    ...    city_uf=São Paulo/SP    
    ...    number=1000    
    ...    details=Apto 28    
    ...    cnh=raposa.png 

    Go to signup page
    Fill signup form         ${dog_walker}
    Additional Service        Cuidar
    Submit signup form
    Popup should be          Recebemos o seu cadastro e em breve retornaremos o contato.


Deve poder cadastrar um novo dog walker que sabe adestrar pets
    [Tags]    aservice

    ${dog_walker}        Create Dictionary
    ...    name=Aline Teste    
    ...    email=aline.teste@teste.com.br    
    ...    cpf=00000014141    
    ...    cep=04534011    
    ...    street=Rua Joaquim Floriano    
    ...    district=Itaim Bibi    
    ...    city_uf=São Paulo/SP    
    ...    number=1000    
    ...    details=Apto 28    
    ...    cnh=raposa.png 

    Go to signup page
    Fill signup form         ${dog_walker}
    Additional Service        Adestrar
    Submit signup form
    Popup should be          Recebemos o seu cadastro e em breve retornaremos o contato.