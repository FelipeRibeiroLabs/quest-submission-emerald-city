import CryptoPoops from 0x02
import NonFungibleToken from 0x01

transaction(recipient: Address, _name: String, _favouriteFood: String, _luckyNumber: Int) {

  prepare(acct: AuthAccount) {
    let nftMinter = acct.borrow<&CryptoPoops.Minter>(from: /storage/Minter)!

    let publicReference = getAccount(recipient).getCapability(/public/CryptoPoopsCollection)
                                .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic, CryptoPoops.MyPublicCollection}>() ?? panic("Does not have an Collection")

      publicReference.deposit(token: <- nftMinter.createNFT(name: _name, favouriteFood: _favouriteFood, luckyNumber: _luckyNumber))
  }

  execute {
    log("New NFT Stored!")
  }
}
