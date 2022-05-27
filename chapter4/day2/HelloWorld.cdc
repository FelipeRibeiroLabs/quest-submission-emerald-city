pub contract HelloWorld {

  pub resource interface INFT{
    pub var name: String
  }

  pub resource NFT: INFT {
    pub var nftId: UInt64
    pub var name: String
    pub var number: UInt64

    init(_name: String, _number: UInt64){
    self.nftId = self.uuid
    self.name = _name
    self.number = _number
    }
  }

  pub fun createNft(name: String, number: UInt64): @NFT {
      return <- create NFT(_name: name, _number: number)
    }

  init(){
  }

}
