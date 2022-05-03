import NFT from 0x03

pub fun main(name: String):  NFT.Data {
  
  return NFT.nft[name]!
}
