part of swagger.api;

class ChildPage {
  
  int? id;
  

  String? title;
  

  List<RecursiveField> children = [];
  
/* With Draft chosen, will only be shown for admin users on the site. */
  int? status;
  

  int? order;
   // range from -2147483648 to 2147483647//
  ChildPage();

  @override
  String toString() {
    return 'ChildPage[id=$id, title=$title, children=$children, status=$status, order=$order, ]';
  }

  ChildPage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    title =
        json['title']
    ;
    children =
      RecursiveField.listFromJson(json['children'])
;
    status =
        json['status']
    ;
    order =
        json['_order']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'children': children,
      'status': status,
      '_order': order
     };
  }

  static List<ChildPage> listFromJson(List<dynamic> json) {
    return json == null ? <ChildPage>[] : json.map((value) => new ChildPage.fromJson(value)).toList();
  }

  static Map<String, ChildPage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChildPage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChildPage.fromJson(value));
    }
    return map;
  }
}

