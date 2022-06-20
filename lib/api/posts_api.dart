part of swagger.api;



class PostsApi {
  final ApiClient apiClient;

  PostsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// 
  ///
  /// For listing, retrieving, creating or updating blog posts. ---
  Future<PostCreate> postsCreate(PostCreate data) async {
    Object postBody = data;

    // verify required params are set
    if(data == null) {
     throw new ApiException(400, "Missing required param: data");
    }

    // create path and map variables
    String path = "/posts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Basic"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PostCreate') as PostCreate ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// parameters:         - name: category_id           type: integer           description: Filter posts by category ID           paramType: query         - name: category_name           type: string           description: Filter posts by category name           paramType: query         - name: category_slug           type: string           description: Filter posts by category slug           paramType: query         - name: tag           type: string           description: Filter posts by tag name           paramType: query         - name: author_id           type: integer           description: Filter posts by author ID           paramType: query         - name: author_name           type: string           description: Filter posts by author&#39;s username           paramType: query         - name: date_min           type: datetime           description: Filter posts by minimum publish date           paramType: query         - name: date_max           type: datetime           description: Filter posts by maximum publish date           paramType: query         - name: search           type: string           description: Search for blog posts that match the query           paramType: query         - name: page           type: integer           description: Page number           paramType: query
  Future<Object> postsList({ num categoryId, String categoryName, String tag, num authorId, String authorName, String dateMin, String dateMax, String categorySlug, String ordering, String search, int limit, int offset }) async {
    Object? postBody;

    // verify required params are set

    // create path and map variables
    String path = "/posts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(categoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category_id", categoryId));
    }
    if(categoryName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category_name", categoryName));
    }
    if(tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
    }
    if(authorId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "author_id", authorId));
    }
    if(authorName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "author_name", authorName));
    }
    if(dateMin != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "date_min", dateMin));
    }
    if(dateMax != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "date_max", dateMax));
    }
    if(categorySlug != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "category_slug", categorySlug));
    }
    if(ordering != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "ordering", ordering));
    }
    if(search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search", search));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Basic"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// For listing, retrieving, creating or updating blog posts. ---
  Future<PostOutput> postsRead(int id) async {
    Object? postBody;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/posts/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Basic"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PostOutput') as PostOutput ;
    } else {
      return null;
    }
  }
  /// 
  ///
  /// For listing, retrieving, creating or updating blog posts. ---
  Future<PostUpdate> postsUpdate(int id, PostUpdate data) async {
    Object postBody = data;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(data == null) {
     throw new ApiException(400, "Missing required param: data");
    }

    // create path and map variables
    String path = "/posts/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Basic"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PostUpdate') as PostUpdate ;
    } else {
      return null;
    }
  }
}
