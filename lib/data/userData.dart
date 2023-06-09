class UserData {
  String userName = "";
  String userEmail = "";
  DateTime userDate = DateTime.utc(2001, 11, 11);
  int userAge = 0;

  void initUser() {
    // init from local storage

    // calculate age
    userAge = userDate.year - DateTime.now().year;
  }
}
