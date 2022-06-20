# swagger.api.PostsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://127.0.0.1:8000/en/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postsCreate**](PostsApi.md#postsCreate) | **POST** /posts | 
[**postsList**](PostsApi.md#postsList) | **GET** /posts | 
[**postsRead**](PostsApi.md#postsRead) | **GET** /posts/{id} | 
[**postsUpdate**](PostsApi.md#postsUpdate) | **PUT** /posts/{id} | 


# **postsCreate**
> PostCreate postsCreate(data)



For listing, retrieving, creating or updating blog posts. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PostsApi();
var data = new PostCreate(); // PostCreate | 

try { 
    var result = api_instance.postsCreate(data);
    print(result);
} catch (e) {
    print("Exception when calling PostsApi->postsCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**PostCreate**](PostCreate.md)|  | 

### Return type

[**PostCreate**](PostCreate.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postsList**
> Object postsList(categoryId, categoryName, tag, authorId, authorName, dateMin, dateMax, categorySlug, ordering, search, limit, offset)



parameters:         - name: category_id           type: integer           description: Filter posts by category ID           paramType: query         - name: category_name           type: string           description: Filter posts by category name           paramType: query         - name: category_slug           type: string           description: Filter posts by category slug           paramType: query         - name: tag           type: string           description: Filter posts by tag name           paramType: query         - name: author_id           type: integer           description: Filter posts by author ID           paramType: query         - name: author_name           type: string           description: Filter posts by author's username           paramType: query         - name: date_min           type: datetime           description: Filter posts by minimum publish date           paramType: query         - name: date_max           type: datetime           description: Filter posts by maximum publish date           paramType: query         - name: search           type: string           description: Search for blog posts that match the query           paramType: query         - name: page           type: integer           description: Page number           paramType: query

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PostsApi();
var categoryId = 8.14; // num | 
var categoryName = categoryName_example; // String | Multiple values may be separated by commas.
var tag = tag_example; // String | 
var authorId = 8.14; // num | 
var authorName = authorName_example; // String | 
var dateMin = dateMin_example; // String | 
var dateMax = dateMax_example; // String | 
var categorySlug = categorySlug_example; // String | 
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.postsList(categoryId, categoryName, tag, authorId, authorName, dateMin, dateMax, categorySlug, ordering, search, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling PostsApi->postsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryId** | **num**|  | [optional] 
 **categoryName** | **String**| Multiple values may be separated by commas. | [optional] 
 **tag** | **String**|  | [optional] 
 **authorId** | **num**|  | [optional] 
 **authorName** | **String**|  | [optional] 
 **dateMin** | **String**|  | [optional] 
 **dateMax** | **String**|  | [optional] 
 **categorySlug** | **String**|  | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
 **search** | **String**| A search term. | [optional] 
 **limit** | **int**| Number of results to return per page. | [optional] 
 **offset** | **int**| The initial index from which to return the results. | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postsRead**
> PostOutput postsRead(id)



For listing, retrieving, creating or updating blog posts. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PostsApi();
var id = 56; // int | A unique integer value identifying this Blog post.

try { 
    var result = api_instance.postsRead(id);
    print(result);
} catch (e) {
    print("Exception when calling PostsApi->postsRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Blog post. | 

### Return type

[**PostOutput**](PostOutput.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postsUpdate**
> PostUpdate postsUpdate(id, data)



For listing, retrieving, creating or updating blog posts. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PostsApi();
var id = 56; // int | A unique integer value identifying this Blog post.
var data = new PostUpdate(); // PostUpdate | 

try { 
    var result = api_instance.postsUpdate(id, data);
    print(result);
} catch (e) {
    print("Exception when calling PostsApi->postsUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Blog post. | 
 **data** | [**PostUpdate**](PostUpdate.md)|  | 

### Return type

[**PostUpdate**](PostUpdate.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

