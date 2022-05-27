import NonFungibleToken from 0x01
import CryptoPoops from 0x02

pub fun main(account: Address, id: UInt64): String {
  let publicReference = getAccount(account).getCapability(/public/CryptoPoopsCollection)
            .borrow<&CryptoPoops.Collection{CryptoPoops.MyPublicCollection}>() 
            ?? panic("Nothing here!")
    
    let nft = publicReference.borrowAuthNFT(id: id)
    return nft.name
}
