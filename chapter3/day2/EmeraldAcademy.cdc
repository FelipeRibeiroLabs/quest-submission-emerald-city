pub contract EmeraldAcademy {

    pub var arrayOfProgrammers: @[Greeting]
    pub var dictionaryOfProgrammers: @{Int: Greeting}

    pub resource Programmer {

        pub let id: UInt64
        pub let name: String
        pub var level: Int

        init(_id: UInt64, _name: String, _level: Int) {
            self.id = _id
            self.name = _name
            self.level = _level
        }
    }


    pub fun addProgrammer(programmer: @Programmer) {
        
        //Array
        self.arrayOfProgrammers.append(<- programmer)
        
        //Dictionary
        let key = programmer.id
        self.dictionaryOfProgrammers[key] <-! programmer
    }

    //Remove from an array
    pub fun removeProgrammer(index: Int) {
        self.arrayOfProgrammers.remove(at: index)
    }

    //remove from a Dictionary
    pub fun removeProgrammerDic(programmerId: UInt64): @Greeting{
        let greeting <- self.dictionaryOfProgrammers.remove(key: programmerId) ?? panic("Could not find the programmer!")

        return <- greeting
    }

    init(){
        self.arrayOfGreeting <- []
        self.dictionaryGreeting <- {}
    }
}