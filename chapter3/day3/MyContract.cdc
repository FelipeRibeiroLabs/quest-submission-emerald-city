pub contract MyContract {
    
    pub var dictionaryNFT: @{String: NFT}

    pub resource NFT{
        pub let nameId: String

        init(_nameId: String){
            self.nameId = _nameId
        }
    }

    pub fun getReference(key: String): &NFT {
        return &self.dictionaryNFT[key] as &NFT
    }

    init(){
        self.dictionaryNFT <- {
            "Nft1": <- create NFT(_nameId: "TopShotKevinDurant"),
            "Nft2": <- create NFT(_nameId: "TopShotLebronJames")
        }
    }
}