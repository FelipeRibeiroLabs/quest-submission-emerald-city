import HelloWorld from 0x02

transaction (_name: String, _number: UInt64){

  prepare(acct: AuthAccount) {
    acct.save( <- HelloWorld.createNft(name: _name, number: _number), to: /storage/MyNFTs)  
    let nft <- acct.load<@HelloWorld.NFT>(from: /storage/MyNFTs) ?? panic("Empty!")
    log(nft.name)
    destroy nft
  }

  execute {}
}
