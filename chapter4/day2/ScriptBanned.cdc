import HelloWorld from 0x02

pub fun main(account: Address): UInt64 {
  let publicAcct = getAccount(account).getCapability(/public/MyPublicNFTs)
                    .borrow<&HelloWorld.NFT{HelloWorld.INFT}>() ?? panic("empty!")
  return publicAcct.number
}
