part of swagger.api;

class User {
  
  int? id;
  
/* Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only. */
  String? username;
  

  String? email;
  

  String? firstName;
  

  String? lastName;
  
/* Designates whether the user can log into this admin site. */
  bool? isStaff;
  
  User();

  @override
  String toString() {
    return 'User[id=$id, username=$username, email=$email, firstName=$firstName, lastName=$lastName, isStaff=$isStaff, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    username =
        json['username']
    ;
    email =
        json['email']
    ;
    firstName =
        json['first_name']
    ;
    lastName =
        json['last_name']
    ;
    isStaff =
        json['is_staff']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'is_staff': isStaff
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? <User>[] : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}

