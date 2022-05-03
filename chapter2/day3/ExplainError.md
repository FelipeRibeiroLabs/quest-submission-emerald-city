
<div align="center"> 
  <img  width="200" alt="FlowBlockchainLogo" justify-content="center" src="https://github.com/emerald-dao/beginner-cadence-course/raw/main/chapter2.0/images/wrongcode.png">
</div>

<h2> EN - 🇺🇸 :</h2>

- The error message says that we are expecting one type and receiving another
- The error occurred because a String was defined as the type of function's return, but when getting a value present within a Dictionarie, this value will always be an Optional
- There are two possibilities to solve this error, either define the return type of the function as an Optional (String?) or put a Force-Unwraper after thing[0x003]!

<h2> PT - 🇧🇷 : </h2>

- A mensagem de erro informa que estamos esperando um tipo e recebendo outro
- O erro ocorreu por estar definido como retorno da função uma String, porém ao pegar um valor presente dentro de um Dictionarie, este valor será sempre um Optional
- Há duas possibilidades para solucionar esse erro, ou definir o tipo do retorno da função um Optional (String?) ou colocar um Force-Unwraper após o thing[0x003]!