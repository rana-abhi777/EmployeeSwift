struct recordEmployee {
	var eid = 1
	var firstName = ""
	var lastName = ""
	var phoneNumber = ""
	var email = ""
	
	// init method for the initialisation of the varibles
	init(eid: Int, firstName: String, lastName: String, phoneNumber: String, email: String){
		self.eid = eid
		self.firstName = firstName
		self.lastName = lastName
		self.phoneNumber = phoneNumber
		self.email = email
	}
}

class HandleRecords{
	// array of structure recordEmployee
	var employeeArray = [recordEmployee]()

	func addRecords(myEmployee: recordEmployee){
		employeeArray.append(myEmployee)
		print("record added successfully")
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
}
var tempEmployee1 = recordEmployee(eid: 1, firstName: "Abhisek", lastName: "Rana", phoneNumber: "9999999999", email: "abhi@gmail.com")
var tempEmployee2 = recordEmployee(eid: 2, firstName: "Abhi", lastName: "Rana", phoneNumber: "8999999999", email: "abhi@gmail.com")
var tempEmployee3 = recordEmployee(eid: 1, firstName: "Abhisek", lastName: "Rana", phoneNumber: "8999999999", email: "mailme@gmail.com")
let myObject = HandleRecords()

myObject.addRecords(myEmployee: tempEmployee1)
myObject.addRecords(myEmployee: tempEmployee2)
print(myObject.employeeArray)
print("deleting a record ")
myObject.deleterecords(myEmployee: tempEmployee2)
print(myObject.employeeArray)
print("updating the records")
myObject.updateRecords(myEmployee: tempEmployee3)
print(myObject.employeeArray)
