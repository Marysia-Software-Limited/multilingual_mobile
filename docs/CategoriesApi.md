# swagger.api.CategoriesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://127.0.0.1:8000/en/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categoriesCreate**](CategoriesApi.md#categoriesCreate) | **POST** /categories | 
[**categoriesList**](CategoriesApi.md#categoriesList) | **GET** /categories | 
[**categoriesRead**](CategoriesApi.md#categoriesRead) | **GET** /categories/{id} | 
[**categoriesUpdate**](CategoriesApi.md#categoriesUpdate) | **PUT** /categories/{id} | 


# **categoriesCreate**
> Category categoriesCreate(data)



For listing, retrieving, creating or updating blog categories. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CategoriesApi();
var data = new Category(); // Category | 

try { 
    var result = api_instance.categoriesCreate(data);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->categoriesCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data** | [**Category**](Category.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoriesList**
> Object categoriesList(ordering, search, limit, offset)



parameters:         - name: search           type: string           description: Search for category names that match the query           paramType: query         - name: page           type: integer           description: Page number           paramType: query

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CategoriesApi();
var ordering = ordering_example; // String | Which field to use when ordering the results.
var search = search_example; // String | A search term.
var limit = 56; // int | Number of results to return per page.
var offset = 56; // int | The initial index from which to return the results.

try { 
    var result = api_instance.categoriesList(ordering, search, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->categoriesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **categoriesRead**
> Category categoriesRead(id)



For listing, retrieving, creating or updating blog categories. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CategoriesApi();
var id = 56; // int | A unique integer value identifying this Blog Category.

try { 
    var result = api_instance.categoriesRead(id);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->categoriesRead: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Blog Category. | 

### Return type

[**Category**](Category.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoriesUpdate**
> Category categoriesUpdate(id, data)



For listing, retrieving, creating or updating blog categories. ---

### Example 
```dart
import 'package:swagger/api.dart';
// TODO Configure HTTP basic authorization: Basic
//swagger.api.Configuration.username = 'YOUR_USERNAME';
//swagger.api.Configuration.password = 'YOUR_PASSWORD';

var api_instance = new CategoriesApi();
var id = 56; // int | A unique integer value identifying this Blog Category.
var data = new Category(); // Category | 

try { 
    var result = api_instance.categoriesUpdate(id, data);
    print(result);
} catch (e) {
    print("Exception when calling CategoriesApi->categoriesUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| A unique integer value identifying this Blog Category. | 
 **data** | [**Category**](Category.md)|  | 

### Return type

[**Category**](Category.md)

### Authorization

[Basic](../README.md#Basic)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

