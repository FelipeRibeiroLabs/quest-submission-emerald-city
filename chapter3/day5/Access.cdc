access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        pub(set) var a: String

        pub var b: String

        access(contract) var c: String

        access(self) var d: String

        //
        // 3 Functions
        //

        pub fun publicFunc() {}

        access(contract) fun contractFunc() {}

        access(self) fun privateFunc() {}


        pub fun structFunc() {

            // ------------- READ ------------- 
            log(self.a)
            log(self.b)
            log(self.c)
            log(self.d)
            log(self.publicFunc())
            log(self.contractFunc())
            log(self.privateFunc())

            // ------- WRITE -----------
            self.a = "b"
            self.b = "c"
            self.c = "d"
            self.d = "e"
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {

            // ------------- READ ------------- 
            log(SomeContract.testStruct.a)
            log(SomeContract.testStruct.b)
            log(SomeContract.testStruct.c)
            
            log(self.e)
            log(SomeContract.testStruct.publicFunc())
            log(SomeContract.testStruct.contractFunc())

            // ------- WRITE -----------
            self.e = 10
            SomeContract.testStruct.a = "b"


        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {

            // ------------- READ ------------- 
            log(SomeContract.testStruct.a)
            log(SomeContract.testStruct.b)
            log(SomeContract.testStruct.c)
            
            log(SomeContract.testStruct.publicFunc())
            log(SomeContract.testStruct.contractFunc())

            // ------- WRITE -----------
            SomeContract.testStruct.a = "b"

    }

    init() {
        self.testStruct = SomeStruct()
    }
}

import SomeContract from 0x01

pub fun main() {
  
  // ------------- READ ------------- 
    log(SomeContract.testStruct.a)
    log(SomeContract.testStruct.b)
    
    log(SomeContract.testStruct.publicFunc())

    // ------- WRITE -----------
    SomeContract.testStruct.a = "b"
}