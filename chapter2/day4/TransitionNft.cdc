import NFT from 0x03

transaction (name: String, country: String, attack: Int, defense:Int) {

  prepare(acct: AuthAccount) {}

  execute {
    return NFT.addData(name: name, country: country, attack: attack, defense: defense)
  }
}
