pub contract MyContract {
    
    pub resource interface INFT {
        pub var attack: UInt64
        pub var defense: UInt64

        pub fun attackPlayer()
    }

    pub resource NFT: INFT{
        pub let nameId: String
        pub var life :Int

        pub var attack: UInt64
        pub var defense: UInt64

        pub fun attackPlayer(){
            self.defense = self.defense - 1
        }

        init(_nameId: String){
            self.nameId = _nameId
            self.life = 100
            self.attack = 20
            self.defense = 50
        }
    }

    init(){
        
    }

    pub fun noInterface(_nameId: String){
        let result: @NFT <- create NFT(_nameId: _nameId)
        log(result.life)

        destroy result
    }

    pub fun yesInterface(_nameId: String){
        let result: @NFT{INFT} <- create NFT(_nameId: _nameId)
        log(result.life) //CANNOT ACCESS

        destroy result
    }

}