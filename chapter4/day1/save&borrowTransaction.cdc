import HelloWorld from 0x02

transaction (_name: String, _number: UInt64){

  prepare(acct: AuthAccount) {
    acct.save( <- HelloWorld.createNft(name: _name, number: _number), to: /storage/MyNFTs)  
    let reference = acct.borrow<&HelloWorld.NFT>(from: /storage/MyNFTs) ?? panic("Empty")
    log(reference.name)
  }

  execute {}
}
