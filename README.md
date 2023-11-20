# robot-discover
Curso de Robot Discover do QAxperience

Aqui estão os passos básicos para instalar o Robot Framework:

Pré-requisitos: Certifique-se de ter o Python instalado em seu sistema. Você pode baixar o Python em python.org. Certifique-se de ter o pip (gerenciador de pacotes Python) instalado. Em muitas instalações do Python modernas, o pip já vem incluído.
Instalação do Robot Framework: Abra um terminal ou prompt de comando e execute o seguinte comando para instalar o Robot Framework:
bash Copy code

pip install robotframework

Este comando instalará o Robot Framework e suas dependências.

Instalação de Bibliotecas Adicionais (opcional): Você pode precisar instalar bibliotecas adicionais dependendo dos tipos de testes que você planeja realizar. Por exemplo, se estiver realizando automação de interface de usuário, você pode querer instalar a biblioteca SeleniumLibrary. Para instalar bibliotecas adicionais, você pode usar comandos como:
bash Copy code

pip install robotframework-seleniumlibrary

Substitua robotframework-seleniumlibrary pelo nome da biblioteca que você deseja instalar.

Verificação da Instalação: Após a instalação, você pode verificar se o Robot Framework foi instalado corretamente usando o comando:
bash Copy code

robot --version

Este comando deve exibir a versão do Robot Framework que foi instalada.

Instalação do WebDriver (se necessário): Se você estiver usando o Robot Framework para automação de testes web com a biblioteca SeleniumLibrary, precisará de um WebDriver compatível com o navegador que você está planejando automatizar (por exemplo, ChromeDriver para o Google Chrome ou GeckoDriver para o Mozilla Firefox). Baixe o WebDriver apropriado e certifique-se de que esteja no PATH do sistema.

Instalar o playwright Use o comando pip install playwright

Instalar a biblioteca do browser Use o comando pip install robotframework-browser
