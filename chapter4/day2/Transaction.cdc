import HelloWorld from 0x01

transaction (_name: String, _number: UInt64){

  prepare(acct: AuthAccount) {
    acct.save( <- HelloWorld.createNft(name: _name, number: _number), to: /storage/MyNFTs)  
    
    acct.link<&HelloWorld.NFT{HelloWorld.INFT}>(/public/MyPublicNFTs, target: /storage/MyNFTs) ?? panic("empty!")
  }

  execute {}
}
