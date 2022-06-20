part of swagger.api;

class RecursiveField {
    RecursiveField();

  @override
  String toString() {
    return 'RecursiveField[]';
  }

  RecursiveField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RecursiveField> listFromJson(List<dynamic> json) {
    return json == null ? <RecursiveField>[] : json.map((value) => new RecursiveField.fromJson(value)).toList();
  }

  static Map<String, RecursiveField> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecursiveField>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecursiveField.fromJson(value));
    }
    return map;
  }
}

