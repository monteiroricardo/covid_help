# CovidHelper

Solução projetada e desenvolvida especialmente para concorrer a uma vaga na empresa Liax ♥

## Sobre

CovidHelper é uma aplicação mobile que visa disponibilizar dados precisos e necessários para tomadas de decisão dentro do hâmbito nacional da saúde.

### Visão Geral

  * Gerenciamento de imunizantes
  
   Oferece a possibilidade de pesquisar em detalhes como foi disponibilizado os lotes de vacina para cada cidade, filtrando pela empresa correspondente, dentro de um estado específico, ou seja, saiba extamente quantas vacinas foram disponibilizadas para a cidade de São Paulo, no lote F540, da vacina Fizer.
  
   * Imunização do cidadão
  
  Consulte o progresso de vacinção de um cidadão pelo seu CPF, tenha em mãos qual vacina foi aplicada, em qual local, por qual profissional. Eu chamo de ficha de vacinação virtual! 
  
  * Dashboard
    
  Visualize dados precisos e atuais sobre a Covid 19 no Brasil. Compare dados, obtenha percentuais, tome decisões.

  

## Como utilizar

### Aviso
  Antes de continuar sua leitura, vale lembrar que esse repositório está dividido em duas branches: "front-end" e "back-end", em cada uma delas você irá encontrar seus respectivos códigos.

### APK

  Para instalar essa solução em seu smartphone **android** basta clicar no botão de download abaixo ↓
  > OBS: Você está fazendo download de um app fora da Loja de aplicativos, está ação requer uma permissão especial de fontes desconhecidas, habilite essa opção em seu smartphone para proseguir! 
  
  <a href="https://github.com/monteiroricardo/covid_help/blob/front-end/covid_help.apk">
<img src="https://github.com/monteiroricardo/CALC_IMC/blob/master/arquivos/apk_btn.png" width="200" height="50" />
</ a>

### Código
  
  Para obter o código dessa solução basta baixar o arquivo ZIP disponível no repositório.
  
  #### Front-end
  Nenhuma configuração adicional
  > OBS: É necessário ter o SDK Flutter instalado e configurado em sua máquina! 
  
  #### Back-end
  Para executar o back-end e testar os endpoints é necessário instalar o banco de dados desenvolvido em sua máquina. A conexão é feita localhost.
  > OBS: É necessário ter o NodeJs & MySQL instalado e configurado em sua máquina! 
  
  Por fim será possível testar os endpoints a seguir:
   * http://localhost:3000/dashboard
   * http://localhost:3000/people/50124525215
   * http://localhost:3000/details/Pfizer/SP/F4545
  
  
## Tecnologias utilizadas

### Gerais

-  [VS code](https://code.visualstudio.com/)
-  [Android Studio](https://developer.android.com/studio)
-  [Postman](https://developer.android.com/studio)
-  [HeideSQL](https://developer.android.com/studio)

### Front-end 
  
-  [Flutter](https://flutter.dev/)
    * [Brasil Fields](https://pub.dev/packages/brasil_fields)
    * [Dio](https://pub.dev/packages/dio)
    * [Fl Chart](https://pub.dev/packages/dio)
    * [Feather Icons](https://pub.dev/packages/flutter_feather_icons)
    * [Flutter SVG](https://pub.dev/packages/flutter_svg)
    * [Font Awesome Icons](https://pub.dev/packages/font_awesome_flutter)
    * [Lottie](https://pub.dev/packages/lottie)
    * [Provider](https://pub.dev/packages/provider)
    * [Shared Preferences](https://pub.dev/packages/shared_preferences)
-  [Dart](https://dart.dev/)
  
 ### Back-end 
  
-  [Node](https://nodejs.org/en/)
    * [cors](https://yarnpkg.com/package/cors)
    * [dotenv](https://yarnpkg.com/package/dotenv)
    * [express](https://yarnpkg.com/package/express)
    * [nodemon](https://yarnpkg.com/package/nodemon)
    * [mysql](https://yarnpkg.com/package/mysql)
   
-  [MySQL](https://www.mysql.com/)

-  [Yarn](https://yarnpkg.com/)
  

Feito com ♥ por Ricardo Monteiro  [Entrar em contato!](https://www.linkedin.com/in/ricardohmonteiro/)
