import HelloWorld from 0x02

pub fun main(account: Address): String {
  let publicAcct = getAccount(account).getCapability(/public/MyPublicNFTs)
                    .borrow<&HelloWorld.NFT{HelloWorld.INFT}>() ?? panic("empty!")
  return publicAcct.name
}
