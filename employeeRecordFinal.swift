enum choices: String {
    case add
    case delete
    case update
    case display
}
struct recordEmployee {
    var eid = 0
    var firstName: String = ""
    var lastName: String?
    var phoneNumber: String?
    var email: String
    var homeAddress: String = ""
    var department: String = "iOS"
    
    // init method for the initialisation of the varibles
    init(eid: Int, firstName: String, lastName: String, phoneNumber: String, email: String, homeAddress: String, department: String){
        self.eid = eid
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.email = email
        self.homeAddress = homeAddress
        self.department = department
    }
}

class HandleRecords{
    // array of structure recordEmployee
    var employeeArray = [recordEmployee]()
    
    func addRecords(myEmployee: recordEmployee){
        employeeArray.append(myEmployee)
    }
    func deleterecords(myEmployee: recordEmployee){
        employeeArray.removeLast()
        print("record deleted successfully")
    }
    func updateRecords(myEmployee: recordEmployee){
        print("updating email of all employees to mailme@codebrew.com")
        var id = myEmployee.eid, indexToReplace = 0
        for index in 0..<employeeArray.count {
            if employeeArray[index].eid == id{
                indexToReplace = index
                break
                }
            }
            employeeArray[indexToReplace] = myEmployee
    }
    func selectiveDisplayRecords(deptt: String){
        print("Displaying only iOS employees")
        for index in 0..<employeeArray.count {
            if employeeArray[index].department == deptt{
                print(employeeArray[index].firstName, employeeArray[index].department, employeeArray[index].homeAddress)
            }
        }
    }
}
var tempEmployee1 = recordEmployee(eid: 1, firstName: "Abhisek", lastName: "Rana", phoneNumber: "9999999999", email: "abhi@gmail.com", homeAddress: "#1662, ESIC Society, Sector - 51 B, Chandigarh", department: "iOS")
var tempEmployee2 = recordEmployee(eid: 2, firstName: "Abhi", lastName: "", phoneNumber: "", email: "abhi@gmail.com", homeAddress: "#1662, ESIC Society, Sector - 51 B, Chandigarh", department: "Android")
var tempEmployee3 = recordEmployee(eid: 1, firstName: "John", lastName: "Connor", phoneNumber: "8999999999", email: "mailme@gmail.com", homeAddress: "#1662, ESIC Society, Sector - 51 B, Chandigarh", department: "")
let handleRecordsObject = HandleRecords()

func choiceSelector(myChoice: choices, employeeDetails: recordEmployee){
    switch myChoice {
    //case 01
    case .add:
        handleRecordsObject.addRecords(myEmployee: employeeDetails)
        
    // case 02
    case .delete:
        handleRecordsObject.deleterecords(myEmployee: employeeDetails)
    
    // case 03
    case .update:
        handleRecordsObject.updateRecords(myEmployee: employeeDetails)
    // case 04
    case .display:
        let deptt = "iOS"
        handleRecordsObject.selectiveDisplayRecords(deptt: deptt)
    }
    // end of switch
}
// end of function choiceSelector

//adding records
choiceSelector(myChoice: .add, employeeDetails: tempEmployee1)
choiceSelector(myChoice: .add, employeeDetails: tempEmployee2)
choiceSelector(myChoice: .add, employeeDetails: tempEmployee3)
print("records added successfully")
print(handleRecordsObject.employeeArray)
print("\n")

//deleting records
choiceSelector(myChoice: .delete, employeeDetails: tempEmployee2)
print("\n")

//updating records
choiceSelector(myChoice: .update, employeeDetails: tempEmployee1)
print(handleRecordsObject.employeeArray)

//displaying selective records
choiceSelector(myChoice: .display, employeeDetails: tempEmployee1)
