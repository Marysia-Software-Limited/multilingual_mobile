# swagger.api.PagesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://127.0.0.1:8000/en/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pagesList**](PagesApi.md#pagesList) | **GET** /pages | 
[**pagesRead**](PagesApi.md#pagesRead) | **GET** /pages/{id} | 


# **pagesList**
> Object pagesList(title, ordering, limit, offset)



parameters:         - name: page           type: integer           description: Page number           paramType: query

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PagesApi();
var title = title_example; // String | 
var ordering = ordering_example; // String | Which field to use when ordering the results.
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.pagesList(title, ordering, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->pagesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **String**|  | [optional] 
 **ordering** | **String**| Which field to use when ordering the results. | [optional] 
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

# **pagesRead**
> Page pagesRead(id)



For listing or retrieving pages. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new PagesApi();
var id = 56; // int | A unique integer value identifying this Page.

try { 
    var result = api_instance.pagesRead(id);
    print(result);
} catch (e) {
    print("Exception when calling PagesApi->pagesRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Page. | 

### Return type

[**Page**](Page.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

