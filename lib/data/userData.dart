class UserData {
  String userName = "";
  String userEmail = "";
  DateTime userDate = DateTime.utc(2001, 11, 11);
  int userAge = 0;

  void initUser() { //from db 
    // init from local storage

    //for test 
    userName = "Радмир";
    userEmail = "radmir_gafiev@icloud.com";
    userDate = DateTime(2001, 11, 11);
    //for test

    // calculate age
    userAge = userDate.year - DateTime.now().year;
  }

  void updateUserDB() {
    // update both db
  }

  void updateUser (String newName, String newEmail, DateTime newDate) {
    userName = newName;
    userEmail = newEmail;
    userDate = newDate;
    userAge = userDate.year - DateTime.now().year;

    //update local db
    //update remote db
  }
}
