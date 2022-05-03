pub contract NFT {

  pub var nft: {String: Data}

  pub struct Data{
    
    pub let name: String
    pub let country: String
    pub let attack: Int
    pub let defense: Int

    

    init(_name: String, _country: String, _attack: Int, _defense: Int){
      self.name = _name
      self.country = _country
      self.attack = _attack
      self.defense = _defense
    }
  }

  pub fun addData(name: String, country: String, attack: Int, defense: Int){
      let newData: Data = Data(_name :name, _country: country, _attack: attack, _defense: defense)
      self.nft[name] = newData
  }

  init(){
    self.nft= {}
  }

}
