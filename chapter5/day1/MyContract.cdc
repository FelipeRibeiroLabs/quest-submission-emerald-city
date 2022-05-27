pub contract MyContract{

    pub event NFTCreated(id: UInt64)

    pub resource interface INFT {
        pub let id: UInt64
    }

    pub resource NFT: INFT {

        pub let id: UInt64
        pub var name: String
        
        pub fun changeName(newName: String){
            pre{
                self.name != "Flow": "You can't use this name!"
            }
            self.name = newName
        }

        init(_name: String){
            self.id = self.uuid
            self.name = _name

        }
    }

    pub fun createNFT(name: String): @NFT{

        let nft <- create NFT(_name: name)
        emit NFTCreated(id: nft.id)
        return <- nft
    }

    init(){}

}