import HelloWorld from 0x02

transaction(myNewNumber: Int) {
    prepare(acct: AuthAccount){
    }
    execute{
        HelloWorld.updatesMyNumber(newNumber: myNewNumber)
    }
}