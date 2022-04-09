// ignore_for_file: file_names, prefer_initializing_formals, unnecessary_this, avoid_return_types_on_setters

class Student {
  String? firstName;
  String? lastName;
  int? grade;
  String? status;

  Student(String firstName, String lastName, int grade) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
    this.status = "Geçti";
  }

  String? get getFirstName {
    return firstName;
  }

  String? get getLastName {
    return lastName;
  }

  int? get getGrade {
    return grade;
  }

  String? get getStatus {
    return status;
  }

  void set setFirstName(String value) {
    this.firstName = value;
  }

  void set setLastName(String value) {
    this.lastName = value;
  }

  void set setGradeName(int value) {
    this.grade = value;
  }

  void set setStatusName(String value) {
    this.status = value;
  }
}
