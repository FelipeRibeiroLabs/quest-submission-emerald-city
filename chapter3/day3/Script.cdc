import MyContract from 0x02

pub fun main(): &MyContract.NFT {
  return MyContract.getReference(key: "Nft1")
}
