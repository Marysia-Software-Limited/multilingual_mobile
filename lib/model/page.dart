part of swagger.api;

class Page {
  
  int? id;
  

  int? parent;
  

  String? title;
  

  String? content;
  

  String? contentModel;
  
/* Leave blank to have the URL auto-generated from the title. */
  String? slug;
  
/* With Published chosen, won't be shown until this time */
  DateTime? publishDate;
  
/* If checked, only logged in users can view this page */
  bool? loginRequired;
  

  String? metaDescription;
  

  String? tags;
  

  String? galleryItems;
  

  List<ChildPage> children = [];
  

  String? inMenus;
  //enum inMenusEnum {  1,  2,  3,  };
  Page();

  @override
  String toString() {
    return 'Page[id=$id, parent=$parent, title=$title, content=$content, contentModel=$contentModel, slug=$slug, publishDate=$publishDate, loginRequired=$loginRequired, metaDescription=$metaDescription, tags=$tags, galleryItems=$galleryItems, children=$children, inMenus=$inMenus, ]';
  }

  Page.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    parent =
        json['parent']
    ;
    title =
        json['title']
    ;
    content =
        json['content']
    ;
    contentModel =
        json['content_model']
    ;
    slug =
        json['slug']
    ;
    publishDate = json['publish_date'] == null ? null : DateTime.parse(json['publish_date']);
    loginRequired =
        json['login_required']
    ;
    metaDescription =
        json['meta_description']
    ;
    tags =
        json['tags']
    ;
    galleryItems =
        json['gallery_items']
    ;
    children =
      ChildPage.listFromJson(json['children'])
;
    inMenus =
        json['in_menus']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'parent': parent,
      'title': title,
      'content': content,
      'content_model': contentModel,
      'slug': slug,
      'publish_date': publishDate == null ? '' : publishDate?.toUtc().toIso8601String(),
      'login_required': loginRequired,
      'meta_description': metaDescription,
      'tags': tags,
      'gallery_items': galleryItems,
      'children': children,
      'in_menus': inMenus
     };
  }

  static List<Page> listFromJson(List<dynamic> json) {
    return json == null ? <Page>[] : json.map((value) => new Page.fromJson(value)).toList();
  }

  static Map<String, Page> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Page>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Page.fromJson(value));
    }
    return map;
  }
}

