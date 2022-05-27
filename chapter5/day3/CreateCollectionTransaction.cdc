import CryptoPoops from 0x02
import NonFungibleToken from 0x01

transaction{

  prepare(acct: AuthAccount) {
    acct.save(<- CryptoPoops.createEmptyCollection(), to: /storage/CryptoPoopsCollection)
    acct.link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic, CryptoPoops.MyPublicCollection}>(/public/CryptoPoopsCollection, target: /storage/CryptoPoopsCollection)
  }

  execute {
    log("Stored with success!")
  }
}
