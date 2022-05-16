
<div align="center"> 
  <img  width="200" alt="FlowBlockchainLogo" justify-content="center" src="https://cryptologos.cc/logos/flow-flow-logo.png">
  <h1> :space_invader: Emerald Academy Bootcamp :milky_way: </h1>
  <p>EmeraldCity Bootcamp - The best DAO</p>
  <p> <strong> My Address:  0x1fe1e944d6f0fd70 </strong> </p>
</div>

-----------------------------------------------------------------------------------------------------------------------------------------------------------

<h1 align="center"> Chapter 3 -  Day One </h1>

-----------------------------------------------------------------------------------------------------------------------------------------------------------

<h2> EN - 🇺🇸 :</h2>

<h3> 3 reasons why structs are different from resources? </h3> 

- <strong>Can be created outside the contract</strong> 
- <strong>They are copied, while Resources are moved</strong>
- <strong>We use = to instantiate it</strong>

<h3> Situation where a resource might be better to use than a struct? </h3> 

- <strong>In any situation that you want something unique like an nft for example, we use a resource to create it</strong> 

<h3> What is the keyword to make a new resource?</h3> 

- <strong>create</strong> 

<h3> Can a resource be created in a script or transaction (assuming there isn't a public function to create one)?</h3> 

- <strong>No, a resource can only be created within your contract</strong> 

<h3> What is the type of the resource below?</h3> 

<code>  
pub resource Jacob {

}
</code>

- <strong>Type @Jacob</strong> 

<h3>Let's play the "I Spy" game from when we were kids. I Spy 4 things wrong with this code. Please fix them.</h3> 

<code>
pub contract Test {

    // Hint: There's nothing wrong here ;)
    pub resource Jacob {
        pub let rocks: Bool
        init() {
            self.rocks = true
        }
    }

    pub fun createJacob(): Jacob { // there is 1 here
        let myJacob = Jacob() // there are 2 here
        return myJacob // there is 1 here
    }
}
</code>

- <strong>Corrected</strong> 

<code>
pub contract Test {

    // Hint: There's nothing wrong here ;)
    pub resource Jacob {
        pub let rocks: Bool
        init() {
            self.rocks = true
        }
    }

    pub fun createJacob(): @Jacob { 
        let myJacob <- create Jacob()
        return <- myJacob 
    }
}
</code>


-----------------------------------------------------------------------------------------------------------------------------------------------------------

<h2> PT - 🇧🇷 : </h2>

<h3> 3 razões pelas quais uma struct se diferencia de um resource? </h3> 

- <strong>Pode ser criada fora do contrato</strong> 
- <strong>São copiadas, enquanto uma Resource é movida</strong>
- <strong>Utilizamos o sinal de = para instanciar</strong>

<h3> Descreva uma situação onde a utilização de uma Resource seria melhor do que uma Struct? </h3> 

- <strong>
    Em qualquer situação que se queira algo único como uma nft por exemplo, utilizamos um resource para cria-la
  </strong> 

<h3> Qual palavra-chave utiliza-se para criar uma nova resource?</h3> 

- <strong>create</strong> 

<h3> Uma resource pode ser criada em um script ou transaction? </h3> 

- <strong>Não, uma resource só pode ser criada dentro do seu contrato</strong> 

<h3> Qual o tipo da resource abaixo?</h3> 

<code>  
pub resource Jacob {

}
</code>

- <strong>Do tipo @Jacob</strong> 


<h3>Encontre os 4 erros no código e corrija-os </h3> 


<code>
pub contract Test {

    // Hint: There's nothing wrong here ;)
    pub resource Jacob {
        pub let rocks: Bool
        init() {
            self.rocks = true
        }
    }

    pub fun createJacob(): Jacob { // there is 1 here
        let myJacob = Jacob() // there are 2 here
        return myJacob // there is 1 here
    }
}
</code>

- <strong>Corrected</strong> 

<code>
pub contract Test {

    // Hint: There's nothing wrong here ;)
    pub resource Jacob {
        pub let rocks: Bool
        init() {
            self.rocks = true
        }
    }

    pub fun createJacob(): @Jacob { 
        let myJacob <- create Jacob()
        return <- myJacob 
    }
}
</code>
